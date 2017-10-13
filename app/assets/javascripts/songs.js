// Find all songs on page and loop over it and delete it


$(document).ready(function() {
  $('.new-song-btn').on('click', showNewSongForm);
  // $('.submit-new-song').bind('submit', createSong);
  $('.submit-new-song').on('click', createSong);
  // $('')
  // $("input[type=checkbox]").bind('change', toggleDone);
  // $(".delete-all-songs").bind('click', removeAllSongs);
  // $('#new-song-form').on('click', function(event) {
  //   event.preventDefault();


    $('#new-song-form').slideUp(350);

    // $('input[id=song.title]').val(null);
    // $('input[id=song.album]').val(null);
    // $('select[id=song_year]').val(null);
  // })
});

function showNewSongForm() {
  $('#new-song-form').slideDown(350);
  $('#new-song-form').css("display", "block");
  // $('.new-song-btn').slideUp(350);
}

function createSong(event) {
  event.preventDefault();

  var title = $('input[name="song[title]"]').val();
  var album = $('input[name="song[album]"]').val();
  var year = $('select[name="song[year(1i)]"]').val();
  var url = $('input[name="song[title]"]').parent().parent().attr('action');
  var newSong = { title: title, year: year, album: album }
  // , artist_id: artist_id

  // debugger;
  $.ajax({
    type: "POST",
    url: url,
    data: JSON.stringify({ song: newSong }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    // debugger;

  })
}



// probably better if I remove this function alltogether and only declare some variables.
// function removeAllSongs(event) {
//   event.preventDefault();

// $(this).attr('data-id')

// // Have to loop over id cause otherwise deletesong doesn't know which song to delete.
//   $.each($(".song-line"), function() {
//     var songId = attr('data-id');
//     // $divRow = $(divRow);
//     // divRow = $(divRow);
//     // songId = $(divRow).data('id');
//     deleteSong(songId);
//   });
// }
//
// function deleteSong(songId) {
//   $.ajax({
//     type: "DELETE",
//     url: "/song/" + songId + ".json",
//     contentType: "application/json",
//     dataType: "json"})
//
//     .done(function(data) {
//       $('div[data-id="'+songId+'"]').remove();
//       // updateCounters();
//     });
// }


// Call this in partial files
// button delete all songs with remote true.
// where to include the script
// how to call this page in script
