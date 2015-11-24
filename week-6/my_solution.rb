# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: takes an integer as input
# Output: method guess will output a symbol :high, :correct, or :low depending on conditional and method will return true or false statement depending on condition
# Steps:
# 	define initialize method to take in an integer as an answer
# 	define guess method which takes in an integer to "guess" the answer
# 	if that guess is higher than the answer, output symbol :high, if same as answer output :correct, and if lower output :low
# 	define solved? method that takes no arguments and returns true if the last "guess" was correct and false otherwise


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	
  	if guess > @answer
  	    return :high
  	elsif guess < @answer
  		return :low
  	else guess = @answer
  		return :correct
  	end

  end
  
  def solved?
  	if @answer == @guess
  		true
  	else
  		false
  	end
  	return @guess == @answer ? true : false
  end
end

game = GuessingGame.new(10)
game.guess(10)
game.solved?



# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	
  	if guess > @answer
  	    return :high
  	elsif guess < @answer
  		return :low
  	else guess = @answer
  		return :correct
  	end

  end
  
  def solved?
  	return @guess == @answer ? true : false
  end
end




# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

	# They define that class object.

# When should you use instance variables? What do they do for you?

	#  You can use instance variables whenever you want to access them throughout different methods.
	#  They allow you to manipulate data inside a method and use it outside of that method.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

	# I didnt have a problem with flow control but I did struggle a bit when it came to using instance variables to change the output of a class method.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

	# Ruby symbols keep their values and so multiple uses of the same symbol have the same object id.
	# It is also more effcient as far as performance goes since it does not require repeated creation of a string.







