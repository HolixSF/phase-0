# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Lindsey ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: name method total that takes a parameter and turns it into an array
# Output: returns sum of all numbers in array
# Steps to solve the problem.

	#create method
	#add together each index of the array passed
	#return the total sum of the array passed	

# 1. total initial solution

def total(my_array)
	sum = 0
	my_array.each do |i|
		sum += i
	end
	return sum
end


# 3. total refactored solution

def total(my_array)
	my_array.reduce(:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: method takes an argument as an array
# Output: returns words in array added together to create sentence while capitalizing first word and adding a period at the end.
# Steps to solve the problem.

	#create method
	#add together arrays with spaces
	#return the whole array as a sentence
	#capitalize first word and add period at the end

# 5. sentence_maker initial solution

def sentence_maker(array)
	sentence = array.join(" ")
	return sentence.capitalize! + "."
end

# 6. sentence_maker refactored solution

def sentence_maker(array)
	sentence = array.join(" ").capitalize + "."
end
