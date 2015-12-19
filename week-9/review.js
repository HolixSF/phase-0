// I worked on this challenge [by myself, with: ].
// This challenge took me [] hours.


// Pseudocode
// create a FUNCTION that takes an ARRAY of numbers
// go through each number in the ARRAY
// IF the number is divisible by 3 and 5 replace it with FizzBuzz
// IF the number is divisible by just 3 replace it with Fizz
// IF the number is divisible by just 5 replace it with Buzz
// RETURN a new ARRAY with the numbers replaced if any


// Initial Solution

// var map = function(array, func) {
//   var results = [];

//   for (var i=0; i < array.length; i++) {
//     results.push(func(array[i]));
//   }

//   return results;
// };

// var super_fizzbuzz = function(n) {
// 	if (n % 3 === 0 && n % 5 === 0) {
// 		return "FizzBuzz";
// 	}
// 	else if (n % 3 === 0) {
// 		return "Fizz";
// 	}
// 	else if (n % 5 === 0) {
// 		return "Buzz";
// 	}
// 	else {
// 		return n;
// 	};
	
// };


// console.log(map([1,2,3,5,10,12,15], super_fizzbuzz));



// Refactored Solution

var super_fizzbuzz = function(array){
	var results = [];

	for (var i = 0; i < array.length; i++) {
		if (array[i] % 15 === 0) {
			results.push('FizzBuzz')
		} 
		else if (array[i] % 3 === 0) {
			results.push('Fizz')
		}
		else if (array[i] % 5 === 0) {
			results.push('Buzz')
		}
		else {
			results.push(array[i])
		};
	};
	console.log(results);
};

super_fizzbuzz([1,2,3,5,10,12,15]);


// Reflection

// What concepts did you solidify in working on this challenge?

	 //creating variables as functions and iteration using for loops. Also conditional statements in js. 

// What was the most difficult part of this challenge?

	// incorporating an array as input and returning a new array

// Did you solve the problem in a new way this time?

	// Yes 

// Was your pseudocode different from the Ruby version? What was the same and what was different?

	// It was fairly the same except in js there is not built in method to replace items in an array and iteration in js revolves around loops.

