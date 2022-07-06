# frozen_string_literal: true

require 'sinatra'
require './tic_tac_toe'

new_game = TicTacToe.new

get '/' do
  erb :game, locals: {:board => new_game.board}
end

