# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: up to 16 numbers
# Output: true or false
# Steps:
# create initialize method that takes in up to 16 numbers and returns error if less than 16 or greater
# create double method that doubles every other number starting from 2nd last
# then split any numbers that are double digits and add all the numbers together
# create check_card method that checks to see if the above method is divisible by 10 and return true if it is

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  
  def initialize(number)
    @number = number.to_s.chars.map(&:to_i)
    if @number.length != 16
      raise ArgumentError.new("Not valid credit card number")
    end
  end
  
  def double_and_add
    @number.reverse.map!.with_index{ |v, i| i % 2 == 0 ? v : v * 2 }.reverse.join.to_s.chars.map(&:to_i).reduce(:+)
  end
  
  def check_card
    if double_and_add % 10 == 0
      p true
    else
      p false
    end
  end
end

new = CreditCard.new(4563960122001999)
p new
p new.double_and_add
p new.check_card

# Refactored Solution








# Reflection

# What was the most difficult part of this challenge for you and your pair?

  # The most difficult part was doing the actual doubling and adding of the elements inside our double and add method.

# What new methods did you find to help you when you refactored?

  # When we were going through our solution we used methods we found in the ruby docs and so we had sort of a refactored solution already.

# What concepts or learnings were you able to solidify in this challenge?

  # I was able to understand chaining together different methods. I was also able to understand that sometimes in order to move forward you might need to take a step back.
