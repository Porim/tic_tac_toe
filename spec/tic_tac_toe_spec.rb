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
	context '#display_tictactoe' do

		it 'prints to terminal' do
			expect {TicTacToe.new.display_tictactoe}.to output.to_stdout
		end

	end
end