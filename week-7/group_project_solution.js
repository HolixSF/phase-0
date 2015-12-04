//Release 4: Refactored Solution

var add = function(a, b){
  return a + b;
}

function sum (array) {
  return array.reduce(add)
}

// User Story:

// As a user I would like this program to accept a list of numbers and give me the total of those numbers.


function mean (array) {
  return array.reduce(add)/array.length
}


// User Story:

// As a user I would like this program to accept a list of numbers and give me the average of those numbers.

function median (array) {
  array.sort( function(a,b) {return a - b;} );
  var median_index = Math.floor(array.length / 2);
  if (array.length % 2) 
    { return array[median_index]; } 
  else 
    { return (array[median_index - 1] + array[median_index]) / 2; }
}

// User Story:

// As a user I would like this program to accept a list of numbers and give me the middle value in this list.