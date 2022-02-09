require 'capybara/rspec'

feature 'Hit Points' do 
    scenario 'we see players hit points information' do
            visit('/')
            fill_in("Player1", with: "Claire")
            fill_in("Player2", with: "Chris")
            click_button("Submit")
            expect(page).to have_content 'Chris HP 50/50'
    end
end