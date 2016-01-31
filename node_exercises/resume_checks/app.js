var fs = require('fs');
var Checker = require('./lib/checker.js');
var read = require('read');

var Resume = function(name, qualifications, skills, references) {
	this.name = name;
	this.qualifications = qualifications;
	this.skills = skills;
	this.references = references;
}

var resume1 = new Resume("Julian Guterman", "HTML, CSS, JavaScript, Ruby on Rails", "Leadership, Attention to detail, Hard Worker", null)
var resume2 = new Resume("Dallas Arielle", "Sales, Retail", "Leadership, Solution focused", "Julian Guterman, Anthony Hower")

var checker = new Checker([resume1, resume2]);

checker.checkWords();