# frozen_string_literal: true

# require 'sinatra'
# enable :sessions


class TicTacToe
  attr_accessor :board
  attr_accessor :player

  def initialize
    @board = (1..9).to_a
    @player = 1
  end

  def display_tictactoe
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts '-----------'
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts '-----------'
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  # place mark
  # check if current player wins
  # if yes do something
  # if no carry on and switch players
  
  def place_mark_on_board(user_choice)
    mark = @player == 1 ? 'X' : 'O'
    @board[user_choice - 1] = mark
    change_player
  end

  def change_player
    @player = @player == 1 ? 2 : 1
  end

  def validate_input(input)
    input.to_i > 0 && input.to_i <= 9 && input.size == 1
  end

  def check_if_X_won
    marks = []
    @board.map.with_index do |mark, index|
      marks << index if mark == "X"
    end
  end

  def anybody_won?
    win_combinations.each {|combo|
      check = combo.map {|x| @board[x]}
      return true if check.uniq.size == 1
    }

    false
    
    # win_combinations.each {|win_combination| marks.include?(win_combinations)}
  end

  def win_combinations
    [ 
    [0,1,2], # top_row 
    [3,4,5], # middle_row 
    [6,7,8], # bottom_row 
    [0,3,6], # left_column 
    [1,4,7], # center_column 
    [2,5,8], # right_column 
    [0,4,8], # left_diagonal 
    [6,4,2] # right_diagonal 
    ]
  end
end

# get '/' do
#   session[:board] = {}
#   erb :game, locals: {:board => session[:board]}
# end

# post '/' do 
#   session[:board] = params['board']
#   redirect '/game'
# end

# get '/game' do 
#   erb :game, locals: {:board => session[:board]}
# end

# post '/game' do 
#   session[:board] = params['board']
# end




