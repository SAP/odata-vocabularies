#!/usr/bin/env node
"use strict";

const csdl = require("odata-csdl");
const lib = require("odata-vocabularies");
const fs = require("fs");
const colors = require("colors/safe");
const prettier = require("prettier");

const PRETTIER_OPTIONS = { parser: "json", printWidth: 120 };

const vocabFolder = "./vocabularies/";
const exampleFolder = "./examples/";

fs.readdirSync(vocabFolder)
  .filter((fn) => fn.endsWith(".xml"))
  .forEach((xmlfile) => {
    const vocab = xmlfile.substring(0, xmlfile.lastIndexOf("."));
    console.log(xmlfile);

    const xml = fs.readFileSync(vocabFolder + xmlfile, "utf8");
    let json;
    try {
      json = csdl.xml2json(xml, { strict: true, lineNumbers: true });
    } catch (e) {
      console.error(
        colors.red(
          `${vocabFolder + xmlfile}:${e.parser.line}:${e.parser.column}: ${
            e.message
          }`,
        ),
      );
      process.exitCode = 1;
      return;
    }

    // swap URLs of latest-version and alternate links
    const namespace = Object.keys(json).find((item) =>
      item.startsWith("com.sap.vocabularies."),
    );
    const links = json[namespace]["@Core.Links"];
    const latestVersion = links.findIndex((l) => l.rel == "latest-version");
    const alternate = links.findIndex((l) => l.rel == "alternate");
    if (latestVersion != -1 && alternate != -1) {
      links[latestVersion].rel = "alternate";
      links[alternate].rel = "latest-version";
    }

    prettier
      .format(JSON.stringify(json, omitLineNumbers), PRETTIER_OPTIONS)
      .then((prettyJson) => {
        fs.writeFileSync(vocabFolder + vocab + ".json", prettyJson);
      });

    const markdown = lib.csdl2markdown(xmlfile, json);
    fs.writeFileSync(vocabFolder + vocab + ".md", markdown.join("\n"));
  });

console.log();

fs.readdirSync(exampleFolder)
  .filter((fn) => fn.endsWith(".xml"))
  .forEach((xmlfile) => {
    const example = xmlfile.substring(0, xmlfile.lastIndexOf("."));
    console.log(example + ".json");

    const xml = fs.readFileSync(exampleFolder + xmlfile, "utf8");
    let json;
    try {
      json = csdl.xml2json(xml, { strict: true });
    } catch (e) {
      console.error(
        colors.red(
          `${exampleFolder + xmlfile}:${e.parser.line}:${e.parser.column}: ${
            e.message
          }`,
        ),
      );
      process.exitCode = 1;
      return;
    }

    prettier
      .format(JSON.stringify(json), PRETTIER_OPTIONS)
      .then((prettyJson) => {
        fs.writeFileSync(exampleFolder + example + ".json", prettyJson);
      });
  });

function omitLineNumbers(key, value) {
  if (key.endsWith("@parser.line")) {
    return undefined;
  }
  return value;
}
