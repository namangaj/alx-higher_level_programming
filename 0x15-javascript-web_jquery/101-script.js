#!/usr/bin/node

$(document).ready(function () {
  // Add click event listener to DIV#add_item
  $('DIV#add_item').click(function () {
    // Add a new <li> element to UL.my_list
    $('UL.my_list').append('<li>Item</li>');
  });

  // Add click event listener to DIV#remove_item
  $('DIV#remove_item').click(function () {
    // Remove the last <li> element from UL.my_list
    $('UL.my_list li:last-child').remove();
  });

  // Add click event listener to DIV#clear_list
  $('DIV#clear_list').click(function () {
    // Remove all <li> elements from UL.my_list
    $('UL.my_list').empty();
  });
});
