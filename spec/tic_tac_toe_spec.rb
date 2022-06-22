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

		it 'makes board with length 9' do
			expect(new_game.board.length).to eq 9
		end
	end
end