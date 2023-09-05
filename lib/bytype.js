const fs = require("fs");
const vocabFolder = "./vocabularies/";
const type = process.argv[2];

const namespaces = {};
const vocabularies = {};
const output = [];

function search(node, kind, prefix) {
	for (const elem in node)
		if (node[elem].$Kind === kind) {
			if (node[elem].$Type === type)
				output.push(prefix + elem);
			else if (node[elem].$Type) {
				const i = node[elem].$Type.lastIndexOf(".");
				const voc = vocabularies[node[elem].$Type.substring(0, i)];
				if (voc)
					search(voc[node[elem].$Type.substring(i + 1)], undefined, prefix + elem + "/");
			}
		}
}

fs.readdirSync(vocabFolder)
	.filter((fn) => fn.endsWith(".json"))
	.forEach(function(fn) {
		const voc = JSON.parse(fs.readFileSync(vocabFolder + fn))
		for (const ns in voc) if (ns[0] !== "$") {
			namespaces[voc[ns].$Alias] = ns;
			vocabularies[voc[ns].$Alias] = voc[ns];
		}
	});
for (const ns in vocabularies)
	search(vocabularies[ns], "Term", namespaces[ns] + ".");
process.stdout.write(JSON.stringify(output, undefined, 2));
