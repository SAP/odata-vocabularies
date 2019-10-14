#!/usr/bin/env node
'use strict';

//TODO: command-line parameter to build just one vocab

const csdl = require('odata-csdl');
const lib = require('odata-vocabularies');
const fs = require('fs');
const https = require('https');

const vocabFolder = './';
const scnFolder = './scn/';

fs.readdirSync(vocabFolder).filter(fn => fn.endsWith('.xml'))
    .forEach(xmlfile => {
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
        fs.writeFileSync(scnFolder + vocab + '.json.txt', JSON.stringify(json, null, 4));

        markdown2scn(
            lib.csdl2markdown(xmlfile, json),
            scnFolder + vocab + '.scn'
        );
    });

/**
 * Create SCN markup from GitHub Flavored Markdown
 * @param {object} markdown Array of strings with GitHub Flavored Markdown
 * @param {string} filename Name of output file
 */
function markdown2scn(markdown, filename) {
    const options = {
        hostname: 'github.wdf.sap.corp',
        port: 443,
        rejectUnauthorized: false,
        path: '/api/v3/markdown/raw',
        method: 'POST',
        headers: {
            'Content-Type': 'text/plain'
        }
    }
    const req = https.request(options, res => {
        let data = '';
        res.on('data', chunk => data += chunk);
        res.on('end', () => tweakAndWrite(data));
    });
    req.on('error', error => {
        console.error(error)
    });
    req.write(markdown.join('\n'));
    req.end();

    function tweakAndWrite(responseBody) {
        let scnMarkup = responseBody.toString();

        scnMarkup = scnMarkup
            .replace(/<a name="user-content-/g, '<a name="')
            .replace(/<span aria-hidden="true" class="octicon octicon-link"><\/span>/g, '')
            .replace(/<br>/g, '<br/>')
            .replace(/<a id="user-content-[\w-]+" class="anchor" href="#[\w-]+" aria-hidden="true"><\/a>/g, '')
            .replace(/"Analytics.xml"/g, '"https://wiki.scn.sap.com/wiki/download/attachments/462030211/Analytics.xml?api=v2"')
            .replace(/"CodeList.xml"/g, '"https://wiki.scn.sap.com/wiki/download/attachments/523995571/CodeList.xml?api=v2"')
            .replace(/"Common.xml"/g, '"https://wiki.scn.sap.com/wiki/download/attachments/448470974/Common.xml?api=v2"')
            .replace(/"Communication.xml"/g, '"https://wiki.scn.sap.com/wiki/download/attachments/448470971/Communication.xml?api=v2"')
            .replace(/"PersonalData.xml"/g, '"https://wiki.scn.sap.com/wiki/download/attachments/496435637/PersonalData.xml?api=v2"')
            .replace(/"Session.xml"/g, '"https://wiki.scn.sap.com/wiki/download/attachments/528121860/Session.xml?api=v2"')
            .replace(/"UI.xml"/g, '"https://wiki.scn.sap.com/wiki/download/attachments/448470968/UI.xml?api=v2"')
            .replace(/"Common\.md#/g, '"https://wiki.scn.sap.com/wiki/display/EmTech/OData+4.0+Vocabularies+-+SAP+Common#')
            .replace(/"Communication\.md#/g, '"https://wiki.scn.sap.com/wiki/display/EmTech/OData+4.0+Vocabularies+-+SAP+Communication#')
            .replace(/"UI\.md#/g, '"https://wiki.scn.sap.com/wiki/display/EmTech/OData+4.0+Vocabularies+-+SAP+UI#')
            ;

        fs.writeFileSync(filename, scnMarkup);
    }
}