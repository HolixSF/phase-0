# Create a Car Class from User Stories


# I worked on this challenge [by myself].


# 2. Pseudocode
# create a car class with model and color properties
# set a variable for distance travelled
# set a variable speed to know when to accel and decel
# create method to be able to turn left and right
# keep track of total distance traveled
# create method to stop
# create method to output car status




# 3. Initial Solution
class Car
	def initialize(model, color)
		@model = model
		@color = color
		@distance_travelled = 0
		@current_speed = 0
		puts "#{color.capitalize} #{model.upcase} created!"
	end
	
	def travel(distance_miles, speed)
		@distance_travelled += distance_miles
		@current_speed = speed
		puts "You are now driving to your destination at #{@current_speed.floor}MPH"
	end

	def drive(distance_miles)
		@distance_travelled += distance_miles
	end

	def change_speed(speed)
		@current_speed = speed
		puts "You change your speed to #{@current_speed.floor}MPH"
	end
	
	def turn(direction)
		puts "You take a #{direction} turn and continue driving"
	end

	def stop
		@current_speed = 0
		puts "You make a stop"
	end

	def check_status
		puts "Your current speed is #{@current_speed.floor}MPH and your total distance traveled is #{@distance_travelled} miles"
	end

	def get_pizza(pizza)
		@pizza_compartment = []
		@pizza_compartment.push(pizza.topping)
		puts "You pick up #{@pizza_compartment.length} #{@pizza_compartment.last} pizza"
	end

	def deliver_pizza(pizza)
		puts "You deliver a #{pizza.topping} pizza"
		@pizza_compartment.shift
	end

end

class Pizza
	attr_accessor :topping

	def initialize(topping = "cheese")
		@topping = topping
	end
	
	
end

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

my_car = Car.new("bmw", "blue")
my_car.travel(0.25, 25)
my_car.stop
my_car.turn("right")
my_car.travel(1.5, 35)
my_car.check_status
my_car.change_speed(15)
my_car.check_status
my_car.drive(0.25)
my_car.stop
my_car.turn("left")
my_car.travel(1.4, 35)
my_car.stop
my_car.check_status

pizza_1 = Pizza.new("peperoni")
pizza_2 = Pizza.new
my_car.get_pizza(pizza_1)
my_car.get_pizza(pizza_2)
my_car.deliver_pizza(pizza_1)
my_car.deliver_pizza(pizza_2)

# 5. Reflection

# What concepts did you review or learn in this challenge?

	# Creating classes and manipulating atrributes within those classes. Creating class methods as well as accessing instances of new classes.

# What is still confusing to you about Ruby?

	#  I have a better grasp but accessing instances are still a bit confusing.

# What are you going to study to get more prepared for Phase 1?
	
	# Definitely a more review on classes and its instances.


