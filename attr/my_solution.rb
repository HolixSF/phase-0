#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: new class greet
# Output: it should output a greeting by using infomation from the name data class
# Steps:
# 	create namedata class which should have an initialize method with my name as a variable
# 	create a greetings class which should have a method to take the name information from namedata class and
# 	method to return a greeting using that name.

class NameData
	attr_reader :name

	def initialize
		@name = "Luis De Castro"
	end
end


class Greetings
	def initialize
		@person = NameData.new
	end
	def hello
		puts "Hello #{@person.name}! How wonderful to see you today."
	end
end

greet = Greetings.new
greet.hello


# Reflection

# Release 1
# What are these methods doing?

	# They are taking information stored in the Profile class printing them to the console.
	# They are also taking in changes to change that information.

# How are they modifying or returning the value of instance variables?

	# Since the methods are instances of the class Profile, by creating a new class we are able to use those methods on that new class.

# Release 2
# What changed between the last release and this release?

	# The attr_reader method was implemented.

# What was replaced?

	# The method originally created to define age was replaced.

# Is this code simpler than the last?

	# Yes it has less lines of code and looks cleaner.

# Release 3
# What changed between the last release and this release?

	# The attr_writer method was implemented.

# What was replaced?

	# The method originally created to accept an argument in order to change the age value.

# Is this code simpler than the last?

	# Yes it has less lines of code and looks cleaner.

#Release 6

# What is a reader method?

	# A reader method or attr_reader allows you to access the information that method is tied to.

# What is a writer method?

	# A writer method or attr_writer allows you to change or assign the information that method is tied to.

# What do the attr methods do for you?

	# Attr methods allow me to write simpler code.
	# Instead of creating all kinds of methods to assign my variables I can just use the attr methods.
	# They are just more convinient to write.

# Should you always use an accessor to cover your bases? Why or why not?

	# No because it depends on what you intent is defining your variables.
	# If I only wanted to have variables that are constant and I dont want them changed I would use reader.
	# If I wanted them to be changed for some reason I would use writer.

# What is confusing to you about these methods?

	# Im still getting the hang of using the attr methods.
	# I understand the concept but need more practice in using.









