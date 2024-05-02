#!/usr/bin/node

$(document).ready(function () {
  // Add click event listener to DIV#red_header
  $('DIV#red_header').click(function () {
    // Update the text color of the header element to red
    $('header').css('color', '#FF0000');
  });
});
