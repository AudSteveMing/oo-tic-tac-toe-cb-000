class TicTacToe
  WIN_COMBINATIONS = [
[0,1,2],
[3,4,5],
[6,7,8],
[0,4,8],
[2,4,6],
[0,3,6],
[1,4,7],
[2,5,8]

]
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

def input_to_index(number)
  num_input = number.to_i - 1
end

def move(index, token = "X")
  @board[index] = token
end


  def position_taken?(location)
    location2 = location.to_i
   !(@board[location2].nil? || @board[location2] == " ")
  end

def valid_move?(index)
  index.between?(0,8) && !position_taken?(index)
end

# def position(location)
#     @board[location.to_i]
#   end
#
#   def position_taken?(location)
#    !(position(location).nil? || position(location) == " ")
#   end

# def turn
#       display_board
#       puts "Please enter 1-9"
#       user_input = gets.strip
#       user_input_normalized = input_to_index(user_input)
#        if !valid_move?(user_input_normalized)
#          turn
#        end
#        move(user_input_normalized, current_player)
#        display_board
#
# end

def turn
    display_board
    puts "Please enter 1-9:"
    input = gets.strip
    input2 - input_to_index(index)
    if !valid_move?(input2)
      turn
    end
    move(input, current_player)
    display_board
  end

def turn_count

end

def current_player
end

def won?

end

def full?

end

def draw?

end

def over?

end

def winner

end

def play

end

end
