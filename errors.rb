# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => The error occured in the errors.rb file.
# 2. What is the line number where the error occurs?
# => Line number 170.
# 3. What is the type of error message?
# => It is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# => It has an unexpected end-of-input, and is expecting keyword_end.
# 5. Where is the error in the code?
# => The error is on line 14 where it is expecting an end to while.
# 6. Why did the interpreter give you this error?
# => Ruby was expecting an end to its while loop.

# --- error -------------------------------------------------------

south_park = "Movie"

# 1. What is the line number where the error occurs?
# => Line number 36.
# 2. What is the type of error message?
# => It has an undefined local variable or method `south_park' for main.
# 3. What additional information does the interpreter provide about this type of error?
# => Object (NameError)
# 4. Where is the error in the code?
# => The variable needs to be defined.
# 5. Why did the interpreter give you this error?
# => Ruby needs its variables or methods defined before it can interpret it.

# --- error -------------------------------------------------------

def cartman()
end
# 1. What is the line number where the error occurs?
# => The error is on line 51.
# 2. What is the type of error message?
# => It has an undefined method `cartman' for main
# 3. What additional information does the interpreter provide about this type of error?
# => Object (NoMethodError)
# 4. Where is the error in the code?
# => The method provided is not defined.
# 5. Why did the interpreter give you this error?
# => Ruby is looking for a method for cartman but since it was not defined it gave an error.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# => The error is on line 66.
# 2. What is the type of error message?
# => It has wrong number of arguments (1 for 0)
# 3. What additional information does the interpreter provide about this type of error?
# => (ArgumentError) from errors.rb:70:in `<main>'
# 4. Where is the error in the code?
# => The error is in the method. The method being called is not set to accept an argument.
# 5. Why did the interpreter give you this error?
# => When the method is called and is passed an argument, Ruby is looking for that argument to be passed. Since the method is not set to accept an argument then it gave an error.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Suck a fat one!")

# 1. What is the line number where the error occurs?
# => It is on line number 85.
# 2. What is the type of error message?
# => It has wrong number of arguments (0 for 1)
# 3. What additional information does the interpreter provide about this type of error?
# => (ArgumentError) from errors.rb:89:in `<main>'
# 4. Where is the error in the code?
# => It is interpreting an argument to be passed when the methos is called.
# 5. Why did the interpreter give you this error?
# => When ruby calls this method with an argument it is looking for that argument to be passed. Since there is no argument to be passed when the method is called ruby gave an error.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "Kyle!")

# 1. What is the line number where the error occurs?
# => It is on line number 106.
# 2. What is the type of error message?
# => It has wrong number of arguments (1 for 2)
# 3. What additional information does the interpreter provide about this type of error?
# => (ArgumentError) from errors.rb:110:in `<main>'
# 4. Where is the error in the code?
# => The method is looking for 2 arguments to be passed, but only recieved 1 of 2.
# 5. Why did the interpreter give you this error?
# => When ruby calls a method with 2 arguments it is looking for 2 arguments to be passed. Since only 1 argument was passed it gave an error.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => The error is on line number 125.
# 2. What is the type of error message?
# => String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# => (TypeError) from errors.rb:125:in `<main>'
# 4. Where is the error in the code?
# => The interpreter wants the integer 5 to be multiplied by a string.
# 5. Why did the interpreter give you this error?
# => Ruby can not multiply an integer by a string but a string CAN be multiplied by an integer.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/2


# 1. What is the line number where the error occurs?
# => The error is on line number 140.
# 2. What is the type of error message?
# => It is a (ZeroDivisionError)
# 3. What additional information does the interpreter provide about this type of error?
# => division by 0
# 4. Where is the error in the code?
# => The variables assignment returns 0.
# 5. Why did the interpreter give you this error?
# => Ruby gave an error when dividing an interger by 0. It is expecting a value.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => The error is on line number 156.
# 2. What is the type of error message?
# => It is giving us a (LoadError)
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file -- /Users/HolixSF/phase-0-curriculum/phase-0/cartmans_essay.md
# 4. Where is the error in the code?
# => Ruby is directly searching for the file to require in all the directories in its $LOAD_PATH
# 5. Why did the interpreter give you this error?
# => When Ruby requires a file it searches for the file first by its absolute path. If not found it will search through the directories in its $LOAD_PATH. Since there is no file or if the file is not in the correct path. Ruby gave a load error.

# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
# => I definitely had some trouble with the last one about the load error.
#How did you figure out what the issue with the error was?
# => I had to do some research on what causes load error when requiring a file.
#Were you able to determine why each error message happened based on the code? 
# => Yes I was.
#When you encounter errors in your future code, what process will you follow to help you debug?
# => I will definitely look at where the error occured, look at the type of error message it presented, then figure out why it gave that error by looking at the code.