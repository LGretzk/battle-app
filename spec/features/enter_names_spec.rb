feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :p1_name, with: 'Luiza'
    fill_in :p2_name, with: 'Archie'
    click_button 'Submit'
    expect(page).to have_content 'Luiza vs. Archie'
  end
end