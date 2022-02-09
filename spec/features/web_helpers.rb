
def sign_in_and_play
    visit('/')
    fill_in("Player1", with: "Claire")
    fill_in("Player2", with: "Chris")
    click_button("Submit")
end