
class TicTacToe
	attr_accessor :board
	def initialize
		@board = Array.new(9,' ')
	end

  def display_tictactoe
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
   	puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
end

TicTacToe.new.display_tictactoe

print "Choose where you want to place your mark with numbers 1-9: "
user = gets.chomp
