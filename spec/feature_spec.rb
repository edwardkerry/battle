require 'capybara'
require 'selenium-webdriver'
include Capybara::DSL
session = Capybara::Session.new :selenium

describe 'feature test' do
  it 'should display the players name' do
    visit(localhost:4567)
    fill_in('PLayer_1', with: 'Tom')
    fill_in('PLayer_2', with: 'Chris')
    click_button('Submit')
    expect(page).to have_content 'Tom Vs. Chris'
  end

end
