# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: takes an array of strings
# Output: output number of sides, when roll is called should return a random element in the array
# Steps: 
#  define initialize method that takes array of strings and raise an error if the array is empty
#  define sides method that returns number of sides
#  define roll method that returns a random string from the array


# Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  	@sides = labels.length
  	if labels.empty?
  		raise ArgumentError.new("wrong number of arguments (0 for 1)")
  	end
  end

  def sides
  	@sides
  end

  def roll
  	@labels.sample
  end
end



# Refactored Solution








# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

	# It seems pretty much the same but since we are not working with integers being passed then we needed to implement a method that can manipulate the strings.

# What does this exercise teach you about making code that is easily changeable or modifiable? 

	# The basic methods are pretty much the same and the ideas are the same, you just need to factor in what type of objects are being manipulated in your program.

# What new methods did you learn when working on this challenge, if any?

	# I looked up how to take an array of strings and return a random element from that array. It lead me to a ruby method .sample which I used in my code.

# What concepts about classes were you able to solidify in this challenge?

	# I was able to properly assign what type of variables(instance variables) are needed in order for my methods to work.





