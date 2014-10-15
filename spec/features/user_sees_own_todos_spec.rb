require "rails_helper"

feature "User sees own todos" do
  scenario "and doesn't see others' todos" do
    Todolist.create!(title: "Buy milk", email: "someone_else@example.com")
    sign_in_as "someone@example.com"

    expect(page).not_to have_css ".todolists li", text: "Buy milk"
  end
end