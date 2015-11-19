# Pad an Array

# I worked on this challenge [by myself, with: Lindsey Stevenson, Reuben Brandt]

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? Input should be the array, min_size and value
# What is the output? (i.e. What should the code return?) Output should be the padded by the min_size.
# What are the steps needed to solve the problem?
# determine length of array
# see if length is less than min_size
# method to pad the array with the value until meets min_size

# 1. Initial Solution
=begin
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
  	array
  else
  	while array.length < min_size
  		array << value
  	end
  	array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  if new_array.length >= min_size
  	new_array
  else
  	while new_array.length < min_size
  		new_array << value
  	end
  	new_array
  end
end
=end

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  array << value while array.length < min_size
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  new_array << value while new_array.length < min_size
  new_array
end


# 4. Reflection

# Were you successful in breaking the problem down into small steps?

  # Yes. We were able to go through each of the requirements one by one to get to the solution.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

  # Yes. We had ifs in our pseudocode that helped us achieve what we intended to do. We did have difficulties in figuring out how to make it non destructive.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

  # Our initial solution for the destructive method was successful. It helped that our pseudocode was basically telling us what to code. The destructive part was hard and we had to go through the ruby docs.
# When you refactored, did you find any existing methods in Ruby to clean up your code?

  # Most of it was just cleaning up the code and taking anything out that was not needed. Knowing the loops can be written in 1 line helped alot in refactoring.

# How readable is your solution? Did you and your pair choose descriptive variable names?

  # It is definitely readable as we chose names that were descriptive of what they mean to do. The pseudocode helped in this regard as well.
# What is the difference between destructive and non-destructive methods in your own words?

  # I think a destructive method permanently changes the array or hash using the code it is passed, while a non-destructive method only changes the array or hash when that code is passed but does not change it permanently outside of that code.






