
def sign_in_and_play
  visit 'http://localhost:9292/'
  fill_in('name1', with: 'tony')
  fill_in('name2', with: 'john')
  click_button('FIGHT')
end

def attack_and_return
  click_button('Attack')
  click_button('Back to fight')
end
