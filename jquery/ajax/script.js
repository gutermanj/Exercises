//JavaScript
$(document).on('ready', function() {



	$('.js-show-characters').on('click', function() {
		fetchCharacters();
		
	});

	$('.js-add-character').on('click', function() {
		publishKylo();//SOMETHING GOES HERE
	});
});

//----------------------------------------------
//============ GET DEFINITIONS =================

function fetchCharacters () {
$.ajax({
	url: 'https://ironhack-characters.herokuapp.com/characters',

	success: function(response) {
		console.log('Everything went okay.');

		displayCharacters(response);

	},

	error: function() {
		console.log('There was an error.');
	}
});


//------------------------------------------------
//============ PRINT DEFINITIONS =================

	function displayCharacters (characters) {


		characters.forEach(function (char) {

			var classes = [1, 2, 3, 4];
			var i = 0;
			if (char.id === 2) {
				i = 2;
			}
			
			var html = `
			<li>
				<h2>${char.name}</h2>
				<p>${char.id}</p>
				<p class="${classes[i]}">${char.occupation}</p>
				<p>${char.weapon}</p>
			</li>
		   `
		
		$('.js-characters-list').append(html);
		$('.js-jedi-master').on('click', function() {
		$('.3').text('Jedi Master')
		});
		
		});
	}
}

//-------------------------------------------
//=============POST DEFINITIONS==============


function publishKylo () {
	var newCharacter = {
		name: 'Emo Kylo Ren',
		occupation: 'Whiner',
		weapon: 'Potato'
	};
		$.ajax({
			type:"POST",

			url: 'https://ironhack-characters.herokuapp.com/characters',

			data: newCharacter,

			success: function() {
				alert('Emo Kylo Ren added successfully!');
			},

			error: function () {
				alert('Kylo Ren was not added.');
			}
		});	
	}














