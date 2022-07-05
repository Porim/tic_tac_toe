# frozen_string_literal: true

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

    it 'makes board with numbers 1 to 9' do
      expect(new_game.board).to include(1,2,9)
    end
  end

  context '#place_mark_on_board' do 
    it 'places a X at given position' do 
      new_game = TicTacToe.new
      new_game.place_mark_on_board(1)
      expect(new_game.board[0]).to eq 'X'
    end
    it 'places a O at given position' do 
      new_game = TicTacToe.new
      new_game.place_mark_on_board(1)
      new_game.place_mark_on_board(2)
      expect(new_game.board[1]).to eq 'O'
    end
  end

  context '#anybody_won?' do
    it 'returns true for given board' do
      new_game = TicTacToe.new
      new_game.board = [0, 1 , 2, 'X', 'X', 'X', 6, 7, 8]
      expect(new_game.anybody_won?).to eq true
    end
    it 'returns false for given board' do
      new_game = TicTacToe.new
      new_game.board = [0, 1 , 2, 'X', 'X', 5, 6, 7, 8]
      expect(new_game.anybody_won?).to eq false
    end
  end

  context '#change_player' do 
    it 'changes players' do 
      new_game = TicTacToe.new
      new_game.player = 1
      new_game.change_player
      expect(new_game.player).to eq 2
    end
    it 'changes players' do 
      new_game = TicTacToe.new
      new_game.player = 2
      new_game.change_player
      expect(new_game.player).to eq 1
    end
  end

  context '#validate_input' do 
    new_game = TicTacToe.new
    it 'returns true for 1' do 
      expect(new_game.validate_input('1')).to be_truthy
    end
    it 'returns false for foo' do 
      expect(new_game.validate_input('foo')).to be_falsey
    end
    it 'returns false for 87' do 
      expect(new_game.validate_input('87')).to be_falsey
    end
    it 'returns false for 3.5' do 
      expect(new_game.validate_input('3.5')).to be_falsey
    end
    it 'returns false for -1' do 
      expect(new_game.validate_input('-11')).to be_falsey
    end

    it 'returns false for 1 if 1 is already marked' do 
      new_game.board[0] = 'X'
      expect(new_game.validate_input('1')).to be_falsey
    end
  end

  context '#display_tictactoe' do
    it 'prints to terminal' do
      expect { TicTacToe.new.display_tictactoe }.to output.to_stdout
    end
  end
end
