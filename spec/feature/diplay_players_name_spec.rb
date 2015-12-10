require 'capybara'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver= :selenium


describe 'feature test' do

  before do
    allow(Kernel).to receive(:rand).and_return(20)
  end

  it 'should display the players name' do
    sign_in_and_play
    expect(page).to have_content 'Vic Vs. Bob'
  end

end
