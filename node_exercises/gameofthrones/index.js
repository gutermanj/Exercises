var fs = require("fs");

//Ruby Version
// contents = IO.read("../jasmine-koans/SpecRunner.html")

fs.readFile("../jasmine-koans/SpecRunner.html", "utf8", function (error, contents) {
	
	if (error !== null) {
		console.log("Here's the error:");
		console.log(error);
	}
	else {
		console.log(contents.length);
	var htmlLines = contents.split("\n");
		console.log(htmlLines);
	}
});