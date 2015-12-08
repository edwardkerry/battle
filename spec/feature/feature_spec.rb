require 'capybara'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver= :selenium

describe 'feature test' do

  it 'should display the players name' do
    sign_in_and_play
    expect(page).to have_content 'Vic Vs. Bob'
  end

  it 'should display the players hit points' do
    sign_in_and_play
    expect(page).to have_content 'Bob: 150HP'
  end

  # As Player 1,
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation

  it 'should allow P1 to hug P2 and get confirmation ' do
    sign_in_and_play
    click_button('HUG PLAYER 2!')
    expect(page).to have_content 'Vic has hugged Bob!'
  end
end
