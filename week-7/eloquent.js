// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

// var name = "Luis";

// var food = prompt("What's your favorite food?")
// alert("Hey! That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping a Triangle

for (var str = "#"; str.length < 8; str+="#")
  console.log(str);

// Functions

// Complete the `minimum` exercise.

function min(x, y){
	return Math.min(x, y);
}
console.log(min(0,10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Lu",
	age: 27,
	favFood: "potatoes", "burgers", "fish",
	quirk: "dances while eating good food" 
}