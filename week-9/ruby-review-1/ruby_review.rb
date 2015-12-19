# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
# define a method that takes in an ARRAY of numbers
# use the MAP method in order to replace those numbers and return another ARRAY
# IF the number is divisible by 3 replace it with "Fizz"
# IF the number is divisible by 5 replace it with "Buzz"
# AND IF the number is divisible by both replace it with "FizzBuzz"


# Initial Solution

def super_fizzbuzz(array)
	array.map do |num|
		if num % 3 == 0 && num % 5 == 0
			"FizzBuzz"
		elsif num % 3 == 0
			"Fizz"
		elsif num % 5 == 0
			"Buzz"
		else
			num
		end		
	end
	p array
end



# Refactored Solution



super_fizzbuzz([1,2,5,10,15])

# Reflection

# What concepts did you review in this challenge?

	# Review on the map method and modifying elements in an array

# What is still confusing to you about Ruby?

	# using other built in methods

# What are you going to study to get more prepared for Phase 1?

	# Understanding more ruby built in methods.


