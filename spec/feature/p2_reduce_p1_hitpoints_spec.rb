require 'capybara'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver= :selenium


describe 'feature test' do

  before do
    allow(Kernel).to receive(:rand).and_return(20)
  end

  # As Player 1,
  # So I can start to lose a game of Battle,
  # I want Player 2's attack to reduce my HP

  it 'should allow P2\'s hugs to reduce P1\'s hug points' do
    sign_in_and_play
    click_button('DO A HUG!')
    click_button('GO GET ANOTHER HUG')
    click_button('DO A HUG!')
    expect(page).to have_content 'Vic: 130HP'
  end

end
