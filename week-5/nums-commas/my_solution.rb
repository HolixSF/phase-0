# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? the method should take a positve integer as its input
# What is the output? (i.e. What should the code return?) it should output a comma seprated integer as a string
# What are the steps needed to solve the problem?
# define a method that takes a positive integer
# take positive integer and turn it into a string
# take string turn into array
# iterate through the array
# add a comma for every 3 numbers (easier to add every 3 numbers if array is reversed)

# 1. Initial Solution

def separate_comma(num)
  # Take number and turn it into a string of arrays and reverse it
  s_num = num.to_s.chars.reverse
  # set a counter for when we iterate through the array
  i = 3
  # make a conditional statement to pass the requirements
  # loop through the array and insert a comma for every 4th index
    if while s_num.count > i
  	  s_num.insert(i, ",")
  	  i += 4
  	   end
    else
  # will output original number if above conditional is not met
  	  num
    end
  # take new array with commas, reverse and join back together
  	s_num.reverse.join
end

# 2. Refactored Solution

def separate_comma(num)
	s_num = num.to_s.chars.reverse.each_slice(3)
	s_num.map { |s_num| s_num.join }.join(",").reverse
end

separate_comma(1000900)

# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?

	# I knew that I had to separate the numbers so that I can iterate through them.
	# Turn them into an array then run through every nth number.
	# I initially wanted to use each_index or each_with_index but I didnt know how to properly iterate using those methods

# Was your pseudocode effective in helping you build a successful initial solution?

	# It definitely helps getting started with what I wanted to do. I didnt try looping until much later
	# after going through it over and over.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

	# I definitely read through the doc over and over to see which methods I can implement. I used 4 new methods in this challenge.
	# The first was .chars which is just taking each string or character and turns it into an array.
	# Next was .insert which lets me insert something into an array using its index.
	# After that was .join. This lets you take an array of strings and join them together into 1 string.
	# Last was each_slice which I used in my refactored solution. This let me cut up the array into separate arrays depending on what size I wanted.

# How did you initially iterate through the data structure?

	# I initially wanted to iterate through an array of strings and try to use its index to insert commas into.
	# This was how I got started but didnt know how to output the result.

# Do you feel your refactored solution is more readable than your initial solution? Why?

	# I think it is only if you understand what each method does.
	# Once you understand it I think its easier to read because the methods basically explain
	# themselves and what your trying to do. If you read it by each method in your head you will get it.





