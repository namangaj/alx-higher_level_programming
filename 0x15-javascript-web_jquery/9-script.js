#!/usr/bin/node

$(document).ready(function () {
  // Fetch translation data from the API
  $.get('https://hellosalut.stefanbohacek.dev/?lang=fr', function (data) {
    // Extract the translation of "hello" from the fetched data
    var helloTranslation = data.hello;
    // Update the text of DIV#hello with the translation
    $('DIV#hello').text(helloTranslation);
  });
});
