require 'rails_helper'

RSpec.feature 'Creating Article' do
  scenario 'a user creates a new article' do
    #visit root page
    visit '/'

    #click on new article
    click_link 'New Article'

    #fill in title
    fill_in 'Title', with: 'Fuck you title'

    #fill in boddy
    fill_in 'Body', with: 'Lorem ipsum lorem ipsum'

    #submit
    click_button 'Create Article'

    #expect article creation
    expect(page).to have_content('Article has been created')

    #redirect
    expect(page.current_path).to eq(articles_path)
  end
end

