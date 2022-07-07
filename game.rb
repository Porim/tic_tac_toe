require './tic_tac_toe'
require './minimax'

def game
  current_game = TicTacToe.new
  puts "Do you want to play with a friend or with computer?"
  pvp_or_ai = gets.chomp.downcase
  if pvp_or_ai == "friend"
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
  elsif pvp_or_ai == "computer"
    current_game.display_tictactoe
    while current_game.board.any?(Integer) do
      print "Player #{current_game.player} choose where you want to place your mark with numbers 1-9: "
      user_choice = Proc.new {gets.chomp}
      ai_choice = Minimax.new(2).solve(current_game.board.dup)
      player_choice = current_game.player == 1 ? user_choice.call : ai_choice
      current_game.place_mark_on_board(player_choice.to_i)
      current_game.display_tictactoe
      if current_game.anybody_won?
        current_game.change_player
        puts "Player #{current_game.player} has won!!!"
        break
      end
      # puts "Computer is thinking..."
      # current_game.display_tictactoe
      if current_game.anybody_won?
        current_game.change_player
        puts "Player #{current_game.player} has won!!!"
        break
      end
    end
    
    puts '*** Game is a draw ***' unless current_game.anybody_won?
  elsif pvp_or_ai == "quit"
    # exit
  else
    puts "Invalid input: say \"friend\" or \"computer\" or \"quit\" to exit: "
    game
  end 
end 
game
