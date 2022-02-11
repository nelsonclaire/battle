feature 'Switch turns' do
      scenario 'at the start of the game' do
        sign_in_and_play
        expect(page).to have_content "Claire's turn"
      end
  
      scenario 'after player 1 attacks' do
        sign_in_and_play
        click_button 'Attack'
        click_button 'OK'
        expect(page).to have_content "Chris's turn"
      end
  end
  