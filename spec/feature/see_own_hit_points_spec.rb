require 'capybara'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver= :selenium


describe 'feature test' do

  before do
    allow(Kernel).to receive(:rand).and_return(20)
  end

  # As Player 1,
  # So I can see how close I am to losing,
  # I want to see my own hit points

  it 'should show P1 hug points' do
    sign_in_and_play
    expect(page).to have_content 'Vic: 150HP'
  end
end
