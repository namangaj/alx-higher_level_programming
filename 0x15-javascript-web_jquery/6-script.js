#!/usr/bin/node

$(document).ready(function () {
  // Add click event listener to DIV#update_header
  $('DIV#update_header').click(function () {
    // Update the text of the header element
    $('header').text('New Header!!!');
  });
});
