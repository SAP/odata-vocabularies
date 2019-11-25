#!/usr/bin/env node
'use strict';

const csdl = require('odata-csdl');
const lib = require('odata-vocabularies');
const fs = require('fs');

const vocabFolder = './vocabularies/';

fs.readdirSync(vocabFolder).filter(fn => fn.endsWith('.xml')).forEach(xmlfile => {
    const vocab = xmlfile.substring(0, xmlfile.lastIndexOf('.'));
    console.log(xmlfile);

    const xml = fs.readFileSync(vocabFolder + xmlfile, 'utf8');

    const jsonWithLineNumbers = csdl.xml2json(xml, true);
    const markdown = lib.csdl2markdown(xmlfile, jsonWithLineNumbers);
    fs.writeFileSync(vocabFolder + vocab + '.md', markdown.join('\n'));

    const json = csdl.xml2json(xml, false);
    // swap URLs of latest-version and alternate links
    const links = json['com.sap.vocabularies.' + vocab + '.v1']['@Core.Links'];
    const latestVersion = links.findIndex(l => l.rel == 'latest-version');
    const alternate = links.findIndex(l => l.rel == 'alternate');
    if (latestVersion != -1 && alternate != -1) {
        links[latestVersion].rel = 'alternate';
        links[alternate].rel = 'latest-version';
    }
    fs.writeFileSync(vocabFolder + vocab + '.json', JSON.stringify(json, null, 4));
});
