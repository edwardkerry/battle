def sign_in_and_play
  visit('/')
  fill_in 'player1', with: 'Vic'
  fill_in 'player2', with: 'Bob'
  click_button('HUG TO THE DEATH!')
end

def sign_in_and_play_comp
  visit('/')
  fill_in 'player1', with: 'Vic'
  fill_in 'player2', with: ''
  click_button('HUG TO THE DEATH!')
end