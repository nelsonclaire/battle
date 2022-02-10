feature 'Attack' do 
    scenario 'we can attack player 2' do
       sign_in_and_play
       click_button('Attack')
       expect(page).to have_content "Claire has attacked Chris"
    end

    scenario 'we can reduce the HP of player2' do
        sign_in_and_play
        click_button('Attack')
        expect(page).to have_content 'Chris HP 40/50'
    end
end