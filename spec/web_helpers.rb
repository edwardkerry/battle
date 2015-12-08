def sign_in_and_play
  visit('localhost:9292')
  fill_in 'player1', with: 'Vic'
  fill_in 'player2', with: 'Bob'
  click_button('HUG TO THE DEATH!')
end
