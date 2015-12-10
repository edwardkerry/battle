require 'capybara'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver= :selenium


describe 'feature test' do

  before do
    allow(Kernel).to receive(:rand).and_return(20)
  end

  # As a Player,
  # So I can Lose a game of Battle,
  # I want to see a 'Lose' message if I reach 0HP first

  it 'should allow a player to lose if they reach 0HP' do
    sign_in_and_play
    14.times do
      click_button('DO A HUG!')
      click_button('GO GET ANOTHER HUG')
    end
    click_button('DO A HUG!')
    expect(page).to have_content 'Vic is the winner! Bob has been hugged to DEATH!'
  end

end
