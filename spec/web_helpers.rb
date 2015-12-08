def sign_in_and_play
  visit('localhost:9292')
  fill_in 'player1', with: 'Tom'
  fill_in 'player2', with: 'Chris'
  click_button('HUG TO THE DEATH!')
end
