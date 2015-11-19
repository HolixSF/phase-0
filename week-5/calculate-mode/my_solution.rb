# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Lindsey Stevenson, Reuben Brandt]

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? an array
# What is the output? (i.e. What should the code return?) the most occuring element in array
# What are the steps needed to solve the problem?
# take array and count number of times each element in array occurs
# find element that occurs most frequent
# return most frequent occuring element



# 1. Initial Solution
=begin
  def mode(array)
    frequency = Hash.new(0)
  	  array.each do | item |
  	    frequency[item] += 1
  	  end
  	new_array = []
  	  frequency.each do | word, occurance |
  	    if occurance == frequency.values.max
  	  	  new_array << word
  	  	end
  	  end
  	new_array
  end
=end

# 3. Refactored Solution

  def mode(array)
	  freq = array.each_with_object(Hash.new(0)) { |word, occurance| occurance[word] += 1 }
    new_array = freq.select{ |k, v| v == freq.values.max }.keys
      new_array
  end

# 4. Reflection

# Which data structure did you and your pair decide to implement and why?

  # Looking at the hint given on the release, we decided on creating a hash. It was also the best and simplest way to get the most occuring element.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

   # We definitely were able to break the problem down and access what we needed to do to get the solution. The hard part was trying to get to that solution using code.

# What issues/successes did you run into when translating your pseudocode to code?

  # I think that we had the most problems with filtering out what we needed from the array. We definitely knew what we wanted to get but didnt know how to get it.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

  # We used .each often as that enabled us to access each element. We also used .values and .max to filter through the elements even more. They werent too difficult to implement as they are easy to understand.


