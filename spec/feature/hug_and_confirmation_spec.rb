require 'capybara'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver= :selenium


describe 'feature test' do

  before do
    allow(Kernel).to receive(:rand).and_return(20)
  end

  # As Player 1,
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation

  it 'should allow P1 to hug P2 and get confirmation ' do
    sign_in_and_play
    click_button('DO A HUG!')
    expect(page).to have_content 'VIC HAS DONE A LOVELY HUG!'
  end

end
