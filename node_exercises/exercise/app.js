var Car = function(model, noise) {
	this.model = model;
	this.noise = noise;
	this.numOfWheels = 4;
}

var lamborghini = new Car('Aventador', 'VROOOOOM');


Car.prototype.printCar = function(){
	console.log('The ' + this.model + ' goes ' + this.noise + '!!!');
}

lamborghini.printCar();

