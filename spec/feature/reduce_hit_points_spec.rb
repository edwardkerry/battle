#require '../../app.rb'

#Capybara.default_driver= :selenium


describe 'feature test' do

  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP

  it 'should reduce p2\'s hit points after a hug' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(20)
    click_button('DO A HUG!')
    expect(page).to have_content 'Bob: 130HP'
  end

end
