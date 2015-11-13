# Factorial

#whatever number given needs to be 
#multplied by 1 up to each number
#up to number given

#solution_1
#while number is less than number given loop
#for each number in loop multiply by next number

#solution_2
#until number is 1 loop
#for each number multiply next number down
#break loop if number = 0

# I worked on this challenge [by myself, with: Lindsey].


# Your Solution Below
def factorial(number)
  # Your code goes here
  i = 1
  until number == 0
  	i *= number
  	number -= 1
  end
  i
end

puts factorial(10)
puts factorial(20)
puts factorial(0)

# establish another variable and assign to 1
