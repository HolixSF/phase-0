# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!

  #(First solution)

  #if list_of_integers.empty?
  #	return 0
  #elsif upper_bound < lower_bound
  #	return 0
  #elsif 
  #counter = list_of_integers.select { |integer| integer >= lower_bound && integer <= upper_bound  }
  #	return counter.count
  #end

  #(Second solution)
  list_of_integers.count { |x| x >= lower_bound && x <= upper_bound}
end