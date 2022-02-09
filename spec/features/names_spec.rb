require 'capybara/rspec'

feature 'Players' do 
scenario 'enter player information' do
        sign_in_and_play
        expect(page).to have_content 'Claire Vs Chris'
    end
end