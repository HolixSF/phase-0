# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
# We need a CLASS Pez, In that class we need to CREATE a new dispenser with an empty cartridge ARRAY.
# That hash will have flavor and number of Pez'.
# Each instance of PEZ will have a default full cartridge of orange pez.
# The class will be able to count and dispez. We can also add pez in many flavors or any number at a time.
# We'll toss an error if the dispenser has more than 12 (the max of the dispenser).
# Class should keep track of the order of flavors. Array will be strings not floats. 
# Array of flavors-- array.length to get the number of pez'.

# Create CLASS PezDispenser and INITIALIZE an ARRAY with a LENGTH of 12 flavors as STRINGS.
# INITIALIZE will CALL METHOD rainbow_fill
# rainbow_fill will SELECT RANDOM flavors and fill ARRAY. 
# Create a check method that checks how many pez are left in our ARRAY and what flavors are next.
# Create ADD method that will take a flavor and ADDs the flavor to our ARRAY
# RAISE ERROR IF ARRAY is full and IF flavor is not accepted. 
# Create eat method that takes a pez from our dispenser. 

# Initial Solution

class PezDispenser

	def initialize
		@new_pez = rainbow_fill
	end

	def rainbow_fill
		@all_flavors = ["cherry", "chocolate", "cola", "grape", "lemon", "orange", "peppermint", "raspberry", "strawberry",]
		rainbow_pack = Array.new(12)
		rainbow_pack.map! do |candy|
		  candy = @all_flavors.shuffle[1]
		end
		p rainbow_pack
	end

	def candy_count
		p "Your dispenser has #{@new_pez.length} pez inside!"
		p "You can expect to enjoy the following flavors " + @new_pez.join(', ')
	end 

	def add_pez(flavor, qty)
		# raise error if dispenser is already full (length == 12)
		# takes flavor and qty
		# adds flavor(s) to the FRONT of our array
		if (@new_pez.length + qty> 12) || !(@all_flavors.include?(flavor)) then raise ArgumentError.new ("It only holds 12 candies/ That's not a flavor you fool!")
		else 
		qty.times do 
			@new_pez.unshift(flavor)
		end 
	end 
 	end

	def eat_pez(qty)
		# removes top flavor (flavor at position 0 in our array)
		@new_pez.shift(qty)
	end

end

darth_vader = PezDispenser.new
darth_vader.candy_count
darth_vader.eat_pez(7)
darth_vader.add_pez("cherry", 5)
darth_vader.cand
# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE

# flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
# super_mario = PezDispenser.new(flavors)
# puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
# puts "Here's a look inside the dispenser:"
# puts super_mario.see_all_pez
# puts "Adding a banana pez."
# super_mario.add_pez("banana")
# puts "Now you have #{super_mario.pez_count} pez!"
# puts "Oh, you want one do you?"
# puts "The pez flavor you got is: #{super_mario.get_pez}"
# puts "Now you have #{super_mario.pez_count} pez!"




# Reflection