#!/usr/bin/node

$(document).ready(function () {
  // Fetch movie data from the API
  $.get('https://swapi-api.alx-tools.com/api/films/?format=json', function (data) {
    // Extract movie titles from the fetched data
    var movies = data.results;
    // Iterate through each movie and append its title to the list
    movies.forEach(function(movie) {
      $('UL#list_movies').append('<li>' + movie.title + '</li>');
    });
  });
});
