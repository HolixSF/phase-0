// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Regina Wong, Chris Shahin, Lindsey Stevenson, Rueben Brandt.

// Pseudocode

// input: a number
// output: a string with commas in the right places

// steps:
// add number into a list where each digit is in a separate index
// check the size of the list (how many digits are there)
// if there are fewer than three digits:
//    return the number as a string
// if there are more than three digits:
//    loop through the list from the back
//    insert a comma every three digits
// return the number as a string with commas

// Initial Solution

function separateComma(number){

  var array = number.toString().split("");

  if ( array.length >=4 ) {
    for(var x = array.length-4; x >= 0; x-=3) {
      array[x] = array[x] + ','
    }
    console.log(array.join(""))
  }
  else{
    console.log(number);
  }
}


// Refactored Solution

function separateComma(number){

  var array = number.toString().split("");
	
  for(var x = array.length-4; x >= 0; x-=3) {
    array[x] = array[x] + ','
  }
  console.log(array.join(""))
}


// Your Own Tests (OPTIONAL)

separateComma(555)
separateComma(77777)
separateComma(100100100)



// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// 	The idea was the same from Ruby. We used the general control flow of an if statement.

// What did you learn about iterating over arrays in JavaScript?

// 	It is very similar to ruby except for the fact that there are no built in method like each.

// What was different about solving this problem in JavaScript?

// 	That there are no easy built in methods we can use like we use in Ruby.

// What built-in methods did you find to incorporate in your refactored solution?

// 	We used toString and also split.
