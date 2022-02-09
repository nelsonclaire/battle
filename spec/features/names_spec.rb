require 'capybara/rspec'

feature 'Players' do 
scenario 'enter player information' do
        visit('/')
        fill_in("Player1", with: "Claire")
        fill_in("Player2", with: "Chris")
        click_button("Submit")
        expect(page).to have_content 'Claire Vs Chris'
    end
end