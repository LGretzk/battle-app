feature 'Hit points' do
  scenario 'shows player 2 hit point' do
    visit('/')
    fill_in :p1_name, with: 'Luiza'
    fill_in :p2_name, with: 'Archie'
    click_button 'Submit'

    expect(page).to have_content 'Archie: 60HP'
  end
end