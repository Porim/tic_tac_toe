require 'capybara/rspec'
require './tic_tac_toe'
Capybara.app = Sinatra::Application.new

describe 'playing tic-tac-toe', type: :feature do 
	before :each do 
		visit '/'
	end

	it 'creates a board' do 
		expect(page).to have_table 
	end

	xit 'page has a button' do 
		expect(page).to have_checkbox
	end

	xit 'page has a button' do 
		click_button('button[0]')
		expect(page).to have_content('X')
	end
end