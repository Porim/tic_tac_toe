require './minimax'

describe Minimax do
	
	context '#solve' do 
		it 'returns 1 for given board' do 
			expect(Minimax.new(1).solve([1,'X','X','O','O','X','X','O','O'])).to eq 1 
		end

		it 'returns 4 for given board' do 
			expect(Minimax.new(2).solve([1,'X','X',4,'O','O','X','O','X'])).to eq 4
		end

		it 'returns 7 for given board' do 
			expect(Minimax.new(1).solve([1,'O','O',4,'O','X',7,'X','X'])).to eq 7
		end
	end
	
	context '#move_options' do 

		it 'returns an array of 1 for given board' do
			expect(Minimax.new(1).move_options([1,'X','X','O','O','X','X','O','O'])).
			to contain_exactly 1
		end

		it 'returns an array of 1 for given board' do
			expect(Minimax.new(2).move_options([1,'X','X',4,'O','O','X','O','X'])).
			to contain_exactly 1,4
		end
	end
end


#  1 ,'X','X'
#  4 ,'O','O'
# 'X','O','X'