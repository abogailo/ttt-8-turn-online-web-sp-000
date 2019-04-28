
def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  input_to_index(input)
  valid_move?(board, index)
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
    index = input.to_i - 1
end

def move(board, index, boardCharacter = "X" )
  board[index] = boardCharacter

end

def valid_move?(board, index)
  
   if position_taken?(board, index) || !(index.between?(0,8))
     false
  else
    true
   end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
    if(board[index] == " " || board[index] == "" || board[index] == nil)
      false
    else
      true
    end
end
