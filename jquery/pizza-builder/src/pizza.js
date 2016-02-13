// Write your Pizza Builder JavaScript in this file.
var peppers = 10;
var pep = 8;
var mushrooms = 12;
var sauce = 0;
var crust = 0;
var cheese = 10;

var items = [peppers, pep, mushrooms, sauce, crust];


$('.btn-green-peppers').on('click', function() {
	$('.pepper').toggleClass('green-pepper')
	if (peppers === 0){
	peppers = 10;
	}
	else {
		peppers = 0;
	}
	console.log("Peppers = " + peppers);
	$('.pepper-price').toggle(500);
});

$('.btn-pepperonni').on('click', function() {
	$('.pep').toggle();
	if (pep === 0){
	pep = 8;
	}
	else {
		pep = 0;
	}
	console.log("Pepperoni = " + pep);	
	$('.pep-price').toggle(500);
});

$('.btn-mushrooms').on('click', function() {
	$('.stemmer').toggleClass('stem')
	$('.capper').toggleClass('cap')
	if (mushrooms === 0){
	mushrooms = 12;
	}
	else {
		mushrooms = 0;
	}
	console.log("Mushrooms = " + mushrooms);
	$('.mushroom-price').toggle(500);
});

$('.btn-crust').on('click', function() {
	$('.crust').toggleClass('crust-gluten-free')
	if (crust === 0){
	crust = 4;
	}
	else {
		crust = 0;
	}
	console.log("Crust = " + crust);
	$('.crust-price').toggle(500);
});

$('.btn-sauce').on('click', function() {
	$('.sauce').toggleClass('sauce-white')
	if (sauce === 0){
	sauce = 2;
	}
	else {
		sauce = 0;
	}
	console.log("Sauce = " + sauce);
	$('.sauce-price').toggle(500);
});

$('.btn').on('click', function() {
	$(this).toggleClass('active')

});

$('.btn').on('click', function() {


	var total = mushrooms + peppers + pep + crust + sauce + cheese;
$('.total-cost').text("$" + total);

	console.log(total);
});





















