//Javacript & jQuery

$(document).on('ready', function() {

	$('#js-search-button').click(function (e) {
		e.preventDefault();
		search();
	});
});

//---------------------------------------
//=======ALL DOCUMENT READY STUFF========


//---------------------------------------
//=========GET DEFINITIONS===============

function search() {
	$.ajax({
		url: 'https://api.spotify.com/v1/search?type=track&query='+ $('#js-search-term').val(),


		success: function(response) {
			console.log('ayyy, it works!');
			console.log(response);
			// printArtist(response);
			// printAlbums(response);
			printTracks(response);
		},

		error: function() {
			console.log('Nope, didn\'t work....');
		}
	});
}

//--------------------------------------
//=========PRINT DEFINITIONS============

function printArtist(response) {
	var thumbnail = response.artists.items[0].images.length - 2
	var html = `
			<h2>${response.artists.items[0].name}</h2>
			<img src="${response.artists.items[0].images[thumbnail].url}">
			<hr>
		
	`

	$('.js-search-results').html(html);
}

function printAlbums(response) {
	var albumItemsArray = response.albums.items
	albumItemsArray.forEach(function (album) {
		var thumbnail = album.images.length - 2
		var html = `
			<h2>Albums</h2>
			<h4>${album.name}</h4>
			<a href="#" data-toggle="modal" data-target=".bs-example-modal-lg"><img src="${album.images[thumbnail].url}"></a>
		`

		$('.js-search-results').append(html);

	});
	var thumbnail = response.albums.items
}

function printTracks(response) {
	var trackItemsArray = response.tracks.items
	trackItemsArray.forEach(function (track) {
		var html = `
			<a class="js-show-track-info" data-track-id=${track.id}>${track.name}</a>
			<br>
		`
			$('.js-search-results').append(html);
	});

	$('.js-show-track-info').click(function(event) {
		console.log($(this));
		var $button = $(event.currentTarget);
		var trackUri = $button.data("track-id");
		// make ajax with trackUri


	});
}













