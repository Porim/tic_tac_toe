require './tic_tac_toe'

def game
  current_game = TicTacToe.new
  current_game.display_tictactoe

  until current_game.anybody_won? do 
    print "Player #{current_game.player} choose where you want to place your mark with numbers 1-9: "
    user_choice = gets.chomp.to_i
    current_game.place_mark_on_board(user_choice)
    current_game.display_tictactoe
  end

  puts "Player #{current_game.player == 2 ? 1 : 2} has won!!!"
end

game
