var read = require('read');
var Quiz = require('./quizclass.js');

// Question class (The individual question object)
var Question = function(id, question, answer, points) {
	this.id = id;
	this.question = question;
	this.answer = answer;
	this.points = points;

}

var question1 = new Question(1, "What's 2 + 2?", '4', 2)
var question2 = new Question(2, "What's 5 x 10?", '50', 6)
var question3 = new Question(3, "What's 30 / (5 + 10)?", '2', 8)

var quiz = new Quiz([question1, question2, question3]);

quiz.startgame();


