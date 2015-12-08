require 'capybara'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver= :selenium
session = Capybara::Session.new :selenium

describe 'feature test' do
  it 'should display the players name' do
    visit('localhost:9393')
    fill_in 'player_1', with: 'Tom'
    fill_in 'player_2', with: 'Chris'
    click_button('Submit')
    expect(page).to have_content 'Tom Vs. Chris'
  end

end
