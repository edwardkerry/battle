require 'capybara'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver= :selenium


describe 'feature test' do

  before do
    allow(Kernel).to receive(:rand).and_return(20)
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

end
