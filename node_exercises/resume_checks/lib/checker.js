//GO TO LINE 146 FOR REFERENCES BUG

var read = require('read');

var Checker = function(resumeArray) {
	this.resumeArray = resumeArray;
	this.position = 0;
	this.currentResume = resumeArray[this.position];
	this.score = 0;
}

Checker.prototype.checkWords = function() {
	var options = {
		prompt: 'What do you want to search for?\nNames, Skills, Qualifications, or References?'
	}


		read(options, this.checkCatagory.bind(this))
}

Checker.prototype.checkCatagory = function(err, input) {
	if (err) {
		throw error;
	}

	var categoryOptions = {
		prompt: 'Enter a valid category...\nNames, Skills, Qualifications, or References? >'
	}

	var nameOptions = {
		prompt: 'Enter a name: \n >'
	}

	var qualificationOptions = {
		prompt: 'Enter a qualification: \n >'
	}

	var skillOptions = {
		prompt: 'Enter a skill: \n >'
	}

	var refencesOptions = {
		prompt: 'must your candidates to have references? \n >'
	}
	// Prompt options ^^^

	if (input.toUpperCase() === 'NAME') {
			read(nameOptions, this.findName.bind(this))
		}
	else if (input.toUpperCase() === 'QUALIFICATIONS') {
			read(qualificationOptions, this.findQualifications.bind(this))
	}
	else if (input.toUpperCase() === 'SKILLS') {
			read(skillOptions, this.findSkills.bind(this))
	}
	else if (input.toUpperCase() === "REFERENCES") {
			read(refencesOptions, this.findReferences.bind(this))
	}
	else {
			console.log('-------------------')
			console.log('Invalid Catagory');
			read(categoryOptions, this.checkCatagory.bind(this))
		}
}

Checker.prototype.findQualifications = function (err, input) {

	
	if (err) {
		throw error;
	}


		for (this.position = 0; this.position < this.resumeArray.length; this.position++){	
			if (this.resumeArray[this.position].qualifications.toUpperCase().indexOf(input.toUpperCase(input)) === -1) {
				if (this.position === this.resumeArray.length - 1){
					return false;
				}
				else {
					console.log('No match for that qualification...');
				}
			}
			else {
				console.log(this.resumeArray[this.position]);
			}
		}

	
}

Checker.prototype.findName = function (err, input) {

	
	if (err) {
		throw error;
	}


		for (this.position = 0; this.position < this.resumeArray.length; this.position++){	
			if (this.resumeArray[this.position].name.toUpperCase().indexOf(input.toUpperCase(input)) === -1) {
				if (this.position === this.resumeArray.length - 1){
					return false;
				}
				else {
					console.log('Name not found');
				}
			}
			else {
				console.log(this.resumeArray[this.position]);
			}
		}

	
}

Checker.prototype.findSkills = function (err, input) {

	
	if (err) {
		throw error;
	}


		for (this.position = 0; this.position < this.resumeArray.length; this.position++){	
			if (this.resumeArray[this.position].skills.toUpperCase().indexOf(input.toUpperCase(input)) === -1) {
				if (this.position === this.resumeArray.length - 1){
					return false;
				}
				else {
					console.log('No match for that skill...');
				}
			}
			else {
				console.log(this.resumeArray[this.position]);
			}
		}

	
}

Checker.prototype.findReferences = function (err, input) {

	
	if (err) {
		throw error;
	}

			// CANT MAKE NON NULL REFERENCES SHOW UP, ONLY IF THEY'RE NULL...
		for (this.position = 0; this.position < this.resumeArray.length; this.position++){	
			if (input.toUpperCase() === "YES"){
					if (this.resumeArray[this.position].references !== null) {
					
					if (this.position === this.resumeArray.length - 1){
						return false;
					}
						else {
							console.log(this.resumeArray[this.position]);
						}
					}
					
				}

				else {
					console.log(this.resumeArray[this.position]);
				}
			}


		}

	



module.exports = Checker;