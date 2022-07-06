require './tic_tac_toe'

class Minimax

	def initialize(player)
		@player = player
	end

	def move_options(board)
		board.select {|cell| cell.class == Integer}
	end

	def solve(board)
		move_options(board).each {|move|
			game = TicTacToe.new 
			game.board = board 
			game.player = @player
			game.place_mark_on_board(move)
			return move if game.anybody_won?
		}
		
	end

end