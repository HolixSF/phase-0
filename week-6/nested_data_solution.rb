# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
# Solution 1
p number_array.flatten.map{ |i| i + 5 }

# Solution 2
p number_array.map! {|element|
if element.is_a?(Array)
 element.map! {|inner| inner + 5}
else
 element + 5
end
}

# Bonus:

# Solution 1
def startup(name)
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
	if startup_names.flatten.include?(name)
		p name + "ly"
	end
end

startup("bit")

# Solution 2

def startup(name)
 startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
 startup_names.each do |element|
   if element == name
     element << "ly"
     p element
   elsif element.is_a?(Array)
     element.each do |sub_array|
       if sub_array == name
         sub_array << "ly"
         p sub_array
       elsif sub_array.is_a?(Array)
         sub_array.each do |inner|
           if inner == name
             inner << "ly"
             p inner
         end
       end
     end
   end
 end
end
end

startup('scope')


# REFLECTION!

# What are some general rules you can apply to nested arrays?

  # Indexing works like any other array and you can iterate over nested arrays by iterating the parent array when dealing with multidimensional arrays.

# What are some ways you can iterate over nested arrays?

  # You can use any methods like you would use on a regular array but you have to iterate again for nested arrays.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

  # Interestingly enough my pair and I came with different ways of solving the problem and each shared our methods.
  # I had used some methods I was already familiar with like flatten and map while he decided to use conditionals to achieve the same end goal.
  # I used those methods because of our psuedocode and understanding what needed to be done I immediately went to the docs to find what I needed.
