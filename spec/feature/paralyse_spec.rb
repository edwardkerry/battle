require 'capybara'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver= :selenium



describe 'paralyse' do
  feature 'a player can be paralysed' do
    sign_in_and_play_comp
    click_button('DO A HUG!')
    expect(page).to have_content ('Bob has been paralysed!')
    click_button('GO GET ANOTHER HUG')
    expect(page).to have_content ('Get ready VIC! It\'s your turn to hug')
  end
end
