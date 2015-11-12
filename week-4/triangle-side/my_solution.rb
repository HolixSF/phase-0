# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
  	if (a == 0) || (b == 0) || (c == 0) # For 0 argument
  		puts false
  	elsif (a + b < c) || (b + c < a) || (a + c < b) # For Checking Triangle Inequality
  		puts false
  		
	elsif (a == b) && (b == c)	# For Equilateral 
  		puts true

  	elsif (a == b) || (b == c) || (a == c)	# For Isoceles
  		puts true
  	end
end

valid_triangle?(5,2,10)