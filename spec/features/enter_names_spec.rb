feature 'Enter names' do

  # scenario 'Displays a form that allows to input names' do
  #   visit('/')
  #   expect(page).to have_field('p1_name')
  # end

  scenario 'submitting names' do
    sign_in_and_play

    #save_and_open_page

    expect(page).to have_content 'Luiza vs. Archie'
  end
end