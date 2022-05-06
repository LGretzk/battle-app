feature 'Hit points' do
  
  scenario 'shows player 2 hit point' do
    sign_in_and_play
    expect(page).to have_content 'Archie: 60HP'
  end

end