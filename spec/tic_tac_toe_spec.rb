require './tic_tac_toe'

describe TicTacToe do
	
	it 'makes a grid for new instance' do
		new_game = TicTacToe.new
		expect(new_game.board).to eq true
	end
end