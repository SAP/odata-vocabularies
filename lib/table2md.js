const sax = require("sax");

var href, first, td;

process.stdin.pipe(sax.createStream(true)
.on("opentag", function({name, attributes}) {
	switch (name) {
		case "tr":
			first = true;
			break;
		case "td": case "th":
			if (!first) process.stdout.write("|");
			first = false;
			td = "";
			break;
		case "a":
			href = attributes.href;
			td += "[";
			break;
		case "p":
			td += "<p>";
			break;
		case "li":
			td += "<br>- ";
	}
})
.on("text", function(text) {
	td += text.replace(/\s+/g, " ");
})
.on("closetag", function(name) {
	switch (name) {
		case "tr":
			process.stdout.write("\n");
			break;
		case "td": case "th":
			process.stdout.write(td.trim());
			break;
		case "a":
			td += `](${href})`;
			break;
		case "p":
			td += "</p>";
			break;
		case "table":
			process.exit(0);
	}
}));
