const fs = require("fs");
const vocabFolder = "./vocabularies/";
const type = process.argv[2];

const vocabularies = {};
const output = [];

function search(voc, node, kind, prefix) {
	for (const elem in node)
		if (node[elem].$Kind === kind) {
			if (node[elem].$Type === type)
				output.push(prefix + elem);
			else if (node[elem].$Type)
				searchtype(voc, node[elem].$Type, prefix + elem + "/");
		}
}

function searchtype(voc, type, prefix) {
	const i = type.lastIndexOf(".");
	let ns = type.substring(0, i);
	if (voc.$Schema.$Alias === ns)
		ns = voc.$Namespace;
	else {
		ref: for (const url in voc.$Reference)
			for (const incl of voc.$Reference[url].$Include)
				if (incl.$Alias === ns) {
					ns = incl.$Namespace;
					break ref;
				}
	}
	const v = vocabularies[ns]?.$Schema;
	if (v) {
		if (v[type.substring(i + 1)].$BaseType)
			searchtype(vocabularies[ns], v[type.substring(i + 1)].$BaseType, prefix);
		search(vocabularies[ns], v[type.substring(i + 1)], undefined, prefix);
	}
}

fs.readdirSync(vocabFolder)
	.filter((fn) => fn.endsWith(".json"))
	.forEach(function(fn) {
		const voc = JSON.parse(fs.readFileSync(vocabFolder + fn))
		for (const ns in voc) if (ns[0] !== "$") {
			vocabularies[ns] = voc;
			vocabularies[ns].$Namespace = ns;
			vocabularies[ns].$Schema = voc[ns];
		}
	});
for (const ns in vocabularies)
	search(vocabularies[ns], vocabularies[ns].$Schema, "Term", ns + ".");
process.stdout.write(JSON.stringify(output, undefined, 2));
