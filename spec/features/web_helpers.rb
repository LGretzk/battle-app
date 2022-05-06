def sign_in_and_play
  visit('/')
  fill_in :p1_name, with: 'Luiza'
  fill_in :p2_name, with: 'Archie'
  click_button 'Submit'
end