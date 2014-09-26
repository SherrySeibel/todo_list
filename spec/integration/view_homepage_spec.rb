require 'rails_helper'

feature 'View the homepage' do
  scenario 'user sees relevant information' do
    visit root_path
    expect(page).to have_css 'title', text: 'TodoList', visible: false
    expect(page).to have_css '[data-roll="description"]'
  end
end
