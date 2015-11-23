# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: it should take a number that represents the sides of a die
# Output: can ouput number of sides and can roll a random number between 1 and number of sides
# Steps:
# create initialize method that takes a number 
# if the number is less than 1 then raise an argument error.
# create a method sides that outputs the number of sides the die has
# create a method roll that outputs a random number between 1 and the number of sides


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("A Die can't have less than 1 side!")
  	end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..sides)
  end
end

die = Die.new(10)
p die.sides
p die.roll 

# 3. Refactored Solution







# 4. Reflection
 
# What is an ArgumentError and why would you use one?
	
	# An ArgumentError is basically an error that comes up when an argument is passed and it is wrong or if it is not acceptable.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

	# Creating an argumenterror and also using random. This challenge was pretty easy since the requirements were not complicated at all.

# What is a Ruby class?

	# A class is like a blueprint that is able to create an object. Inside the class we can create methods to define those objects created.

# Why would you use a Ruby class?

	# Classes are a way of organizing objects and methods. It is more efficient to create classes that have the methods you want to use
	# on objects than to keep creating methods for each object.

# What is the difference between a local variable and an instance variable?

	# A local variable is only available within the block it is called in. An instance variable is available to anything within its class.
	# A local variable starts with a lower case letter and a instance variable starts with an "@".

# Where can an instance variable be used?

	# An instance variable can be used anywhere inside its class. It can be used by any methods inside that class.




