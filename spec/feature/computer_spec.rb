require 'capybara'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver= :selenium


describe 'feature test' do

  before do
    allow(Kernel).to receive(:rand).and_return(20)
  end

  it 'should allow a computer to play as P2' do
    sign_in_and_play_comp
    click_button('DO A HUG!')
    click_button('GO GET ANOTHER HUG')
    using_wait_time 4 do
      expect(page).to have_content 'MECCAHUGGER HAS DONE A LOVELY HUG!'
    end
  end

end
