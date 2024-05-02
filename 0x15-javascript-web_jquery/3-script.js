#!/usr/bin/node

$(document).ready(function () {
  // Add click event listener to DIV#red_header
  $('DIV#red_header').click(function () {
    // Add the class 'red' to the header element
    $('header').addClass('red');
  });
});
