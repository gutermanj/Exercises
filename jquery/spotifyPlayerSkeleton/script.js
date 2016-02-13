$(document).on('ready', function() {
	
	var playing = 0

	$('.js-search-song').click(function (e) {
		e.preventDefault();
		$('.btn-play').removeClass('playing');
		search();
		if (playing === 1) {
			playing = playing + 1;
		}
		var audio = document.getElementById("js-track");
			
	}); // click function
	

	

	$('.btn-play').click(function() {
		var audio = document.getElementById("js-track");
		if (playing === 0) {
			audio.play();
			$('.btn-play').addClass('playing');
				playing = playing + 1;
			console.log(playing);
		} else if (playing === 2) {
			audio.play();
			$('.btn-play').addClass('playing');
			playing = playing - 1;
			console.log(playing);

		} else {
			audio.pause();
			$('.btn-play').removeClass('playing');
				playing = playing - 1;
			console.log(playing);
		} // End conditional statement



		$('#js-track').on('timeupdate', printTime);// Have printTime be called when the time is updated	
	}); // click function

		$('.author').click(function (event) {
			console.log('Author has been clicked!');
			var id = $(event.currentTarget).data("id");
			getArtist(id);
			$('.modal').modal("show")
			
		}); //click function

}); // document ready


function search() {
	
	$.ajax({

		url: 'https://api.spotify.com/v1/search?type=track&query=' + $('.js-search-term').val(),

		success: function(response) {
			console.log(response);
			firstTrack(response);
			printTime(response);
			

			$('.title').text(response.tracks.items[0].name)
			$('.author').text(response.tracks.items[0].artists[0].name)
			$('#js-album').prop('src', response.tracks.items[0].album.images[0].url)
			$('#js-album').prop('width', '300')
			$('#js-album').prop('height', '300')
			$('.author').data('id', response.tracks.items[0].artists[0].id)

		}, // success

		error: function() {
			console.log('Error with API Results...')
		} // error

	}); // $.ajax({

} // function search() {

function firstTrack(response) {
	var firstTrackName = response.tracks.items[0].name;
	var firstTrackArtist = response.tracks.items[0].artists[0].name
	var firstTrackPreview = response.tracks.items[0].preview_url


	var html = `
			<audio src="${firstTrackPreview}" id="js-track">
		`

	
	$('.js-track-preview').html(html)

	$('.btn-play').removeClass('disabled');



	console.log(firstTrackPreview);
	console.log(firstTrackName);
	console.log(firstTrackArtist);

} // function firstTrack () {

function printTime (response) {
	var current = $('#js-track').prop('currentTime');
	$('.progressbar').prop('value', current)
} // printTime (progress bar)

function getArtist(id) {
	$.ajax({

		url: 'https://api.spotify.com/v1/artists/' + id,

		success: function(response) {
		console.log('Yay!');
		console.log(response.name);
		var modalHeader = `
				<h1>${response.name}</h1>
			`
		$('.js-modal-header').html(modalHeader)

		console.log(response);
		

		}, // success
		error: function() {
			console.log("Something went wrong");
		}

	}); // Ajax
} // function getArtist() {





