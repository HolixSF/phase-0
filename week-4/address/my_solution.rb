# Format an Address

#create method that takes in 4 parameters
#return sentence using 4 parameters for street, city, state, and zip
#turn interger into string


# I worked on this challenge [by myself, with: ].


# Your Solution Below

def make_address(street, city, state, zip)
	p "You live at " + street + ", in the beautiful city of " + city + ", " + state + "." + " Your zip is " + zip.to_s + "."
end

make_address("633 Folsom St.", "San Francisco", "CA", "94107")
