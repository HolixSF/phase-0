# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  # Your code goes here!

  #(First Solution)

  #longest = list_of_words.sort_by {|x| x.length}
  #return longest[-1]

  #(Second Solution)
  
  list_of_words.max_by {|x| x.length}
end