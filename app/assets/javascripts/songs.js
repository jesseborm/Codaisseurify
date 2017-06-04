// Find all songs on page and loop over it and delete it


$(document).ready(function() {
  // $("input[type=checkbox]").bind('change', toggleDone);
  // $("form").bind('submit', submitTodo);
  $(".delete-all-songs").bind('click', removeAllSongs);
});


function removeAllSongs(event) {
  event.preventDefault();

  var divRow = this;
  var songId = divRow.data('id');

  $.each($(".song-line"), function() {
    $divRow = $(divRow);
    // divRow = $(divRow);
    songId = $(divRow).data('id');
    deleteSong(songId);
  });
}

function deleteSong(songId) {
  $.ajax({
    type: "DELETE",
    url: "/song/" + songId + ".json",
    contentType: "application/json",
    dataType: "json"})

    .done(function(data) {
      $('div[data-id="'+songId+'"]').remove();
      // updateCounters();
    });
}


// Call this in partial files
// button delete all songs with remote true.
// where to include the script
// how to call this page in script
