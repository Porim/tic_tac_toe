require './tic_tac_toe'

describe TicTacToe do

	context 'new instance' do
		new_game = TicTacToe.new
		
		it 'makes a board' do
			expect(new_game.board).to be_truthy
		end

		it 'makes board an array' do
			expect(new_game.board.class).to eq Array
		end
	end
end