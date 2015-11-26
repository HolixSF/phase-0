# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [8] hours on this challenge.


# Release 0: Pseudocode
# Outline:
#   create method that calls random letter in word "Bingo" and a random number from 1-100
#   when the letter and number corresponds to the board replace that number with an X
#   display the board as a board with the replacements

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # make an array containing letters b, i, n, g, o and use .sample to randomize
  # create a variable that uses random on a range of numbers 1-100

# Check the called column for the number called.
  # use a case statement for what letter is called
  # make each letter correspond to each index in each array within the board

# If the number is in the column, replace with an 'x'
  # using the case statement above if the number called is in the arrays within board
  # replace that number with an X

# Display a column to the console
  #

# Display the board to the console (prettily)
  # call the new board to the console and display it correctly

# Initial Solution

class BingoBoard
  
  attr_accessor :bingo_board
  attr_reader :letter
  attr_accessor :number
  
  def initialize(board)
    @bingo_board = board
  end
  
  def show_board
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
  end

  def call
    @letter = ["B", "I", "N", "G", "O"].sample
    @number = rand(1..100)
    puts "Call! #{@letter},#{@number}"
    5.times do
    print "."
    sleep 0.1
    end
    sleep 0.8
    puts
  end

  def check
    case @letter
    when "B"
      if @bingo_board.transpose[0].include?(@number)
        @bingo_board.each{ |a| a.map!{ |num| num == @number ? 'X' : num}}
        p @bingo_board[0]
        p @bingo_board[1]
        p @bingo_board[2]
        p @bingo_board[3]
        p @bingo_board[4]
      else
        puts "Not on the board! Try again!"
        puts
        p @bingo_board[0]
        p @bingo_board[1]
        p @bingo_board[2]
        p @bingo_board[3]
        p @bingo_board[4]
      end
    when "I"
      if @bingo_board.transpose[1].include?(@number)
        @bingo_board.each{ |a| a.map!{ |num| num == @number ? 'X' : num}}
        p @bingo_board[0]
        p @bingo_board[1]
        p @bingo_board[2]
        p @bingo_board[3]
        p @bingo_board[4]
      else
        puts "Not on the board! Try again!"
        puts
        p @bingo_board[0]
        p @bingo_board[1]
        p @bingo_board[2]
        p @bingo_board[3]
        p @bingo_board[4]
      end
    when "N"
      if @bingo_board.transpose[2].include?(@number)
        @bingo_board.each{ |a| a.map!{ |num| num == @number ? 'X' : num}}
        p @bingo_board[0]
        p @bingo_board[1]
        p @bingo_board[2]
        p @bingo_board[3]
        p @bingo_board[4]
      else
        puts "Not on the board! Try again!"
        puts
        p @bingo_board[0]
        p @bingo_board[1]
        p @bingo_board[2]
        p @bingo_board[3]
        p @bingo_board[4]
      end
    when "G"
      if @bingo_board.transpose[3].include?(@number)
        @bingo_board.each{ |a| a.map!{ |num| num == @number ? 'X' : num}}
        p @bingo_board[0]
        p @bingo_board[1]
        p @bingo_board[2]
        p @bingo_board[3]
        p @bingo_board[4]
      else
        puts "Not on the board! Try again!"
        puts
        p @bingo_board[0]
        p @bingo_board[1]
        p @bingo_board[2]
        p @bingo_board[3]
        p @bingo_board[4]
      end
    when "O"
      if @bingo_board.transpose[4].include?(@number)
        @bingo_board.each{ |a| a.map!{ |num| num == @number ? 'X' : num}}
        p @bingo_board[0]
        p @bingo_board[1]
        p @bingo_board[2]
        p @bingo_board[3]
        p @bingo_board[4]
      else
        puts "Not on the board! Try again!"
        puts
        p @bingo_board[0]
        p @bingo_board[1]
        p @bingo_board[2]
        p @bingo_board[3]
        p @bingo_board[4]
      end
    end
  end

  def auto_play
    until @bingo_board.each{ |a| a.each{ |num| num.is_a?(String)}} == true
      call
      check
      puts
    end
      puts
      puts "-----WE HAVE A WINNER!!-----"
  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
puts "----WELCOME TO AUTOMATED BINGO!----"
sleep 0.8
puts
puts "----CREATING NEW BINGO BOARD----"
10.times do
  print "."
  sleep 0.1
end
puts
puts
new_game.show_board
sleep 0.8
puts
puts "----LETS PLAY!----"
puts
sleep 0.8
# new_game.auto_play #-------WARNING WILL AUTOMATE THE GAME UNTIL THE WHOLE BOARD IS FULL OF X's----------
new_game.call
new_game.check


#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

  # I thought about the problem as a whole instead of individual methods. In a way I threw myself into the problem before pseudocoding each part.
  # It became difficult once I was into it because I did not know how to start the check process.

# What are the benefits of using a class for this challenge?

  # Being able to create all kinds of methods that are able to interchange information is usefull and allows you to be creative with what your looking to do.
  # It is also very efficient in writing code as you write less code to accomplish the same things.

# How can you access coordinates in a nested array?

  # You can use index of index like array[0][0] or you can iterate over each arrays.

# What methods did you use to access and modify the array?

  # I used the transpose method to put each index of the subarrays into an array itself and I also used .map! in order to change the value.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

  # I learned what transpose does which is a new method for me. It assumes that there is a multidemensional array and transposes or switches the rows and columns.
  # You would only be able to use this on multidemensional arrays that contain rows and columns.

# How did you determine what should be an instance variable versus a local variable?

  # If I needed to access the information from a variable within the class and use it in any methods I would use an instance variable.
  # If the variable I need is not needed outside of method that its defined then I would use a local variable.

# What do you feel is most improved in your refactored solution?

  # I was not able to come up with a refactored solution as this challenge already took me a very long time.
  # Looking at my code I think that outputting the board in a nice way could be done differently.
