require 'capybara'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver= :selenium


describe 'feature test' do

  before do
    allow(Kernel).to receive(:rand).and_return(20)
  end

  # As Player 1,
  # So I can lose a game of Battle,
  # I want Player 2 to attack me, and I want to get a confirmation

  it 'should let P1 be hugged with a confirmation' do
    sign_in_and_play
    click_button('DO A HUG!')
    click_button('GO GET ANOTHER HUG')
    click_button('DO A HUG!')
    expect(page).to have_content 'BOB HAS DONE A LOVELY HUG!'
  end

end
