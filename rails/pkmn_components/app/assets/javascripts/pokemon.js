// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

PokemonApp.Pokemon = function (pokemonUri) {
	this.id = PokemonApp.Pokemon.idFromUri(pokemonUri);
};

PokemonApp.Pokemon.prototype.render = function () {
	console.log("Rendering pokemon: #" + this.id);

	var self = this;

	$.ajax({
		url: '/api/pokemon/' + this.id,
		success: function (response) {
			self.info = response;
			console.log(self);
			var imageuri = self.info.sprites[0].resource_uri;

			$(".js-pkmn-name").text(self.info.name);
			$(".js-pkmn-number").text(self.info.pkdx_id);
			$(".js-pkmn-height").text(self.info.height);
			$(".js-pkmn-weight").text(self.info.weight);
			$('.js-pkmn-hp').text(self.info.hp);
			$('.js-pkmn-att').text(self.info.attack);
			$('.js-pkmn-def').text(self.info.defense);
			$('.js-pkmn-sp-att').text(self.info.sp_atk);
			$('.js-pkmn-sp-def').text(self.info.sp_def);
			$('.js-pkmn-speed').text(self.info.speed);
			$('.js-pkmn-type').text(self.info.types[0].name);

			$('.js-pokemon-modal').modal("show");
			pokemonImage(imageuri);
		}

	});
	
};

function pokemonImage(imageuri) {

	$.ajax({
		url: `http://pokeapi.co/${imageuri}`,
		success: function (response) {
			console.log(response);
			var html = `
			<img src="http://pokeapi.co/${response.image}">
			`
			$('.js-pkmn-image').html(html)
		}
	});
}

PokemonApp.Pokemon.idFromUri = function (pokemonUri) {
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
};

$(document).on("ready", function () {

	$('.js-show-pokemon').on('click', function (event) {
		var $button = $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri");

		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	});

});