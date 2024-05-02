#!/usr/bin/node

$(document).ready(function () {
  // Function to fetch translation and update DIV#hello
  function fetchTranslation() {
    // Get the language code entered by the user
    var languageCode = $('INPUT#language_code').val();
    // Fetch translation data from the API
    $.get('https://www.fourtonfish.com/hellosalut/hello/', { lang: languageCode }, function (data) {
      // Extract the translation of "Hello" from the fetched data
      var helloTranslation = data.hello;
      // Update the text of DIV#hello with the translation
      $('DIV#hello').text(helloTranslation);
    });
  }

  // Add click event listener to INPUT#btn_translate
  $('INPUT#btn_translate').click(fetchTranslation);

  // Add keypress event listener to INPUT#language_code
  $('INPUT#language_code').keypress(function (event) {
    // Check if the pressed key is ENTER
    if (event.which == 13) {
      // Fetch translation when user presses ENTER
      fetchTranslation();
    }
  });
});
