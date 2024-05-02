#!/usr/bin/node

$(document).ready(function () {
  // Fetch character data from the API
  $.get('https://swapi-api.alx-tools.com/api/people/5/?format=json', function (data) {
    // Extract character name from the fetched data
    var characterName = data.name;
    // Update the text of DIV#character with the character name
    $('DIV#character').text(characterName);
  });
});
