#!/usr/bin/node

$(document).ready(function () {
  // Add click event listener to DIV#toggle_header
  $('DIV#toggle_header').click(function () {
    // Check if header has class 'red'
    if ($('header').hasClass('red')) {
      // Remove 'red' class and add 'green' class
      $('header').removeClass('red').addClass('green');
    } else {
      // Remove 'green' class and add 'red' class
      $('header').removeClass('green').addClass('red');
    }
  });
});
