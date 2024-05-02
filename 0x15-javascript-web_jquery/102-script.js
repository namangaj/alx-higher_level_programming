#!/usr/bin/node

$(document).ready(function () {
  // Add click event listener to INPUT#btn_translate
  $('INPUT#btn_translate').click(function () {
    // Get the language code entered by the user
    var languageCode = $('INPUT#language_code').val();
    // Fetch translation data from the API
    $.get('https://www.fourtonfish.com/hellosalut/hello/', { lang: languageCode }, function (data) {
      // Extract the translation of "Hello" from the fetched data
      var helloTranslation = data.hello;
      // Update the text of DIV#hello with the translation
      $('DIV#hello').text(helloTranslation);
    });
  });
});
