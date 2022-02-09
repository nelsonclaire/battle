require 'capybara/rspec'

feature 'homepage' do #type: :feature do
scenario 'displays' do
        visit('/')
        expect(page).to have_content 'Testing infrastructure working!'
    end
end
