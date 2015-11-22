# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# create a new hash from the string itereate through each word in string make into key with default quantity 0
# print the list to the console [last method created would print to list]
# output: [it would output the hash with keys and values]

# Method to add an item to a list
# input: item name and optional quantity
# steps: take item turn into hash key with optional quantity as value
# output: original modified hash (destructive method)

# Method to remove an item from the list
# input: key(item)
# steps: remove key and value from list using hash method
# output: original modified hash with less item 

# Method to update the quantity of an item
# input: key and new value
# steps: modify value of key using hash method
# output: original modified hash with new value for given key

# Method to print a list and make it look pretty
# input: the given hash
# steps: puts title of list and new line have items separated by a comma and values
# output: nil

def create_list(string)
  hash_list = Hash.new(0)
  string.split.each{ |item| hash_list[item] = 1 }
  print_list(hash_list)
end

def add_item(hash, string, quantity = 1)
  hash[string] = quantity
end

def remove_item(hash, string)
  hash.delete(string)
end

def update(hash, string, quantity)
  hash[string] = quantity
end

def print_list(hash)
  puts "My WHAM BAM GROCERY LIST"
  hash.each{ |item, q| puts "#{item}, #{q}" }
end

grocery_list = create_list("carrots apples cereal pizza")
update(grocery_list, "carrots", 0)
print_list(grocery_list)

# REFLECTION TIIIMEEE
 
# What did you learn about pseudocode from working on this challenge?

	# Pseudocode really helps to break down each problem and turn it into code.
	# It helps in thinking about ways to solve each part of the problem.

# What are the tradeoffs of using Arrays and Hashes for this challenge?

	# Using an array we would not have been able to create a list with names and values.

# What does a method return?

	# A method returns the argument that it is passed

# What kind of things can you pass into methods as arguments?

	# You can pass strings, arrays, hashes, even other methods. Basically any object.

# How can you pass information between methods?
	
	# You can pass information between methods by passing a method inside another method.

# What concepts were solidified in this challenge, and what concepts are still confusing?

	# I definitely understood how to use methods and manipulate its information a lot better.
	# I also have a better grasp of variables and their scope.



