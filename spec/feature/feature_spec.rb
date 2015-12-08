require 'capybara'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver= :selenium

describe 'feature test' do
  it 'should display the players name' do
    visit('localhost:9292')
    fill_in 'player1', with: 'Tom'
    fill_in 'player2', with: 'Chris'
    click_button('Submit')
    expect(page).to have_content 'Tom Vs. Chris'
  end

end
