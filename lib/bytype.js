const fs = require("fs");

function qualifiedName(voc, type) {
  type ||= "Edm.String";
  const i = type.lastIndexOf(".");
  let ns = type.substring(0, i);
  if (voc.$Schema.$Alias === ns) ns = voc.$Namespace;
  else {
    ref: for (const url in voc.$Reference)
      for (const incl of voc.$Reference[url].$Include)
        if (incl.$Alias === ns) {
          ns = incl.$Namespace;
          break ref;
        }
  }
  return [ns, type.substring(i + 1)];
}

function bytype(vocabFolder, types) {
  const vocabularies = {};
  const output = [];

  function search(voc, node, kind, prefix) {
    for (const elem in node)
      if (node[elem].$Kind === kind) {
        const [ns, local] = qualifiedName(voc, node[elem].$Type);
        if (
          types.some(
            ({ nsType, localType }) => ns === nsType && local === localType
          )
        )
          output.push(prefix + elem);
        else if (node[elem].$Type)
          searchtype(voc, node[elem].$Type, prefix + elem + "/");
      }
  }

  function searchtype(voc, type, prefix) {
    const [ns, local] = qualifiedName(voc, type);
    const v = vocabularies[ns]?.$Schema;
    if (v) {
      if (v[local].$BaseType)
        searchtype(vocabularies[ns], v[local].$BaseType, prefix);
      search(vocabularies[ns], v[local], undefined, prefix);
    }
  }

  fs.readdirSync(vocabFolder)
    .filter((fn) => fn.endsWith(".json"))
    .forEach(function (fn) {
      const voc = JSON.parse(fs.readFileSync(vocabFolder + fn));
      for (const ns in voc)
        if (/^[^$@]/.test(ns)) {
          vocabularies[ns] = voc;
          vocabularies[ns].$Namespace = ns;
          vocabularies[ns].$Schema = voc[ns];
        }
    });
  for (const ns in vocabularies) {
    const voc = vocabularies[ns];
    search(voc, voc.$Schema, "Term", ns + ".");
    for (const elem in voc.$Schema)
      if (voc.$Schema[elem].$Kind === "ComplexType")
        searchtype(voc, ns + "." + elem, ns + "." + elem + "/");
      else if (/^[^$@]/.test(elem) && voc.$Schema[elem] instanceof Array)
        for (const op of voc.$Schema[elem]) {
          for (const over of op.$Parameter)
            search(voc, over, undefined, ns + "." + elem + "/");
          const [nsReturn, localReturn] = qualifiedName(
            voc,
            op.$ReturnType.$Type
          );
          if (
            types.some(
              ({ nsType, localType }) =>
                nsReturn === nsType && localReturn === localType
            )
          )
            output.push(ns + "." + elem + "/$ReturnType");
          else if (op.$ReturnType)
            searchtype(
              voc,
              op.$ReturnType.$Type,
              ns + "." + elem + "/$ReturnType/"
            );
        }
  }
  return output;
}

if (module.parent) module.exports = bytype;
else {
  const types = [];
  for (let i = 2; i < process.argv.length; i++) {
    const pos = process.argv[i].lastIndexOf(".");
    types.push({
      nsType: process.argv[i].substring(0, pos),
      localType: process.argv[i].substring(pos + 1),
    });
  }
  process.stdout.write(
    JSON.stringify(bytype(__dirname + "/../vocabularies/", types), undefined, 2)
  );
}
