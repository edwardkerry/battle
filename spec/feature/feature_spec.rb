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

  # As Player 1,CRS
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation

  it 'should allow P1 to hug P2 and get confirmation ' do
    sign_in_and_play
    click_button('DO A HUG!')
    expect(page).to have_content 'Vic has hugged Bob!'
  end

  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP

  it 'should reduce p2\'s hit points after a hug' do
    sign_in_and_play
    click_button('DO A HUG!')
    expect(page).to have_content 'Bob: 130HP'
  end

  # As two Players,
  # So we can continue our game of Battle,
  # We want to switch turns

  it 'should tell you it\s player one\'s turn' do
    sign_in_and_play
    expect(page).to have_content 'Get ready VIC! It\'s your turn to hug!'
  end

  it 'should switch and tell you it\'s player two\'s turn' do
    sign_in_and_play
    click_button('DO A HUG!')
    click_button('GO GET ANOTHER HUG')
    expect(page).to have_content 'Get ready BOB! It\'s your turn to hug!'
  end

  # As Player 1,
  # So I can see how close I am to losing,
  # I want to see my own hit points

  it 'should show P1 hug points' do
    sign_in_and_play
    expect(page).to have_content 'Vic: 150HP'
  end
end
