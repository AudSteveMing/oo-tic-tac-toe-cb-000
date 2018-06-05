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

# def position_taken?(index)
#   corrected_index = input_to_index(index)
#   @board[corrected_index].nil? || @board[corrected_index] == " " #return true if the position is taken
# end

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

end
