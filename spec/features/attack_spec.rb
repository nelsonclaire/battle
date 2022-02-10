feature 'Attack' do 
    player1 = Player.new("Claire")
    player2 = Player.new("Chris")

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

    scenario 'we can reduce the HP of player2' do
        sign_in_and_play
        click_button('Attack')
        expect{player1.attack(player2)}.to change{player2.hitpoints}.by(-10)
    end

end