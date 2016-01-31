var read = require('read');

var Quiz = function(questionArray) {
	this.questionArray = questionArray;
	this.position = 0;
	this.currentQuestion = questionArray[this.position];
	this.score = 0;
}


Quiz.prototype.startgame = function() {
	console.log('pulling a question');
		var options = {
			prompt: `${this.currentQuestion.question}`
		}

		read(options, this.checkAnswer.bind(this))
	}

Quiz.prototype.checkAnswer = function (err, input) {
		if (err) {
			throw error;
		}
		// Validates the input compared to correct answer, and checks if there are any questions left
		else if (input === this.currentQuestion.answer ) {
				if (this.position === this.questionArray.length - 1) {
					this.score += this.currentQuestion.points;
					console.log('You finished with a score of: ' + this.score);
					console.log('You win!');
				}
				else if (this.position === this.questionArray.length - 2) {
					this.score += this.currentQuestion.points;
					this.position += 1;
					this.currentQuestion = this.questionArray[this.position]
					console.log('Bonus Question! Answer this correctly for 50 points!');
					this.startgame();
				}
					else {
					this.score += this.currentQuestion.points;
					this.position += 1;
					console.log('---------------')
					this.currentQuestion = this.questionArray[this.position];
					console.log('added position');
					console.log("You're now on question: " + (this.position + 1));
					console.log('Your total score is: ' + this.score)
					this.startgame();
					}
		}

			else { // Wrong answer
				if (this.score > -10){
				console.log(input + " is incorrect!");
				console.log('Your current score is now: ' + this.score);
				console.log('--------------');
				this.score -= this.currentQuestion.points;
				this.startgame();
			}
			else {
				console.log('Game Over!')
			}

			}
	}

	module.exports = Quiz;