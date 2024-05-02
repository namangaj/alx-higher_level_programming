#!/usr/bin/node

$(document).ready(function () {
  // Add click event listener to DIV#add_item
  $('DIV#add_item').click(function () {
    // Create a new <li> element
    var newItem = $('<li>Item</li>');
    // Append the new <li> element to UL.my_list
    $('UL.my_list').append(newItem);
  });
});
