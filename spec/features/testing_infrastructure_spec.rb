feature 'Testing infrastrucutre' do
  xscenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end

  scenario 'Displays a form that allows to input names' do
    visit('/')
    # select player 1 name field
    expect(page).to have_field('p1_name')
  end
end

