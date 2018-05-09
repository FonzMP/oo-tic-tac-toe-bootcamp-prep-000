class TicTacToe
  def initialize(board = nil)
    @board = Array.new(9, " ")
  end

  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ]

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(input)
    user_index = input.to_i
    index_of_user = user_index - 1
  end

  def move(index, var)
    @board[index] = var.to_s
  end

  def position_taken?( index)
    if @board[index] == " " || @board[index] == ""
      return false
    elsif @board[index] == nil
      return false
    else
      return true
    end
  end

end
