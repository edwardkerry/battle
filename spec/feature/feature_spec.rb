require 'capybara'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver= :selenium

describe 'feature test' do
  it 'should display the players name' do
    sign_in_and_play
    expect(page).to have_content 'Tom Vs. Chris'
  end

it 'should display the players hit points' do
  sign_in_and_play
  expect(page).to have_content 'Chris: 150'
end

end
