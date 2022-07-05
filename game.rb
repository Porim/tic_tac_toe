require './tic_tac_toe'

def game
  current_game = TicTacToe.new
  current_game.display_tictactoe

  while current_game.board.any?(Integer) do
    print "Player #{current_game.player} choose where you want to place your mark with numbers 1-9: "
    user_choice = gets.chomp
    unless current_game.validate_input(user_choice)
      puts "!!! Invalid input !!!"    
      redo
    end
    current_game.place_mark_on_board(user_choice.to_i)
    current_game.display_tictactoe
    
   	if current_game.anybody_won?
			current_game.change_player
			puts "Player #{current_game.player} has won!!!"
			break
		end
  end
	
  puts '*** Game is a draw ***' unless current_game.anybody_won?
end

game
