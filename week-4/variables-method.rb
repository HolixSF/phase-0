# Full Name Greeting #

puts "Hi whats your first name?"

first_name = gets.chomp

puts "Whats your middle name?"

middle_name = gets.chomp

puts "Whats your last name?"

last_name = gets.chomp

puts "Hello " + first_name + " " + middle_name + " " + last_name + "!"

# Bigger, better favorite number #

puts "Whats your favorite number?"

fav_number = gets.chomp

new_bigger_fav_number = fav_number.to_i + 1

puts "I think " + new_bigger_fav_number.to_s + " is bigger and better.."


=begin Reflection! 

How do you define a local variable?

	A local variable begins with a lower-case letter or a _.
	It can be used as a name to hold information such as strings and numbers.

How do you define a method?

	Methods are the things that do stuff in Ruby.
	It is like a function in which it can also accept parameters.
	Methods need to be defined before they can do stuff and when named they need to start with a lower-case letter.

What is the difference between a local variable and a method?
	
	A local variable is what defines a method. It is only valid inside a method.
	A method is the function that interprets the local variable.

How do you run a ruby program from the command line?

	You can run a ruby program from the command line either by first typing in "irb" or 
	you can create a ruby file, write your program in it and open it by typing "ruby file_name.rb" in the command line.

How do you run an RSpec file from the command line?

	You can run an RSpec file by typing in "rspec file_name.spec.rb"

What was confusing about this material? What made sense?

	The material was more of an overview of some of the courses I had taken prior to
	phase 0. Variables and methods made alot more sense just from reading the book by Chris Pine.

=end