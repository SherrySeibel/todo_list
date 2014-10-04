require 'rails_helper'

feature 'User visits homepage' do
  scenario 'succcessfully' do
    visit root_path

    expect(page).to have_css 'h1', text: 'Todo List'
  end
end
