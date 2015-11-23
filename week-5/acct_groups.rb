# PSEUDOCODE
# create a method that takes a list of my cohorts
# divide the list into groups of 4
# turn the list into a hash with keys as the group and the values as the students

    
def grouping(students)
  groups = students.each_slice(4).to_a
  hashed_group = Hash[(0...groups.length).zip groups]
  puts "These are the groups in my cohort!"
  hashed_group.each{|k, v| puts "Group#{k} - #{v}"}
end

grouping(["Albert Hahn","Benjamin Shpringer","Chris Shahin","Coleby Kent","Thomas Huang","Sean Massih","Sean Fleming","Reuben Brandt","Hanah Yendler","Jonathan Huang","Igor Kazimirov","Lindsey Stevenson","Luis De Castro","Michael Du","Monique Williamson","Regina Wong"])

# I understand that this method is really basic and simple.
# I wanted complicate it more but was really struggling with trying to get what I wanted.

# REFLECTIONNNN

# What was the most interesting and most difficult part of this challenge?
  
  # The most interesting part was how much freedom we got. We literally could do whatever we wanted with the basic guideline of "do this".
  # The most difficult part for me was trying to turn my idea for a solution into code. I struggled a lot with trying to implement my idea
  # and instead brought it back down to the simplest part.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?

  # I think so but I dont do too well when I overcomplicate my solutions. Off the bat I jot down complicated solutions and have trouble 
  # turning them into code. When I get frustrated I just redo everything and make it simpler.

# Was your approach for automating this task a good solution? What could have made it even better?

  # It was not great of a solution tbh. I wanted to implement something that would allow anyone left over thats not
  # in a group of at least 3 to be inserted into each existing group. This was what I was struggling to achieve.
  # It could also have randomized the people being put into groups.

# What data structure did you decide to store the accountability groups in and why?

  # Initially I put the groups into an array with an array of groups. That was not clean for me so I decided to
  # put them into a hash.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

  # Like I said above I end up overcomplicating things and I already had a solution using ruby methods I looked up in
  # the ruby docs. 


