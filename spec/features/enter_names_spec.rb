feature 'Enter names' do

  # scenario 'Displays a form that allows to input names' do
  #   visit('/')
  #   expect(page).to have_field('p1_name')
  # end

  scenario 'submitting names' do
    visit('/')
    fill_in :p1_name, with: 'Luiza'
    fill_in :p2_name, with: 'Archie'
    click_button 'Submit'
    expect(page).to have_content 'Luiza vs. Archie'
  end
end