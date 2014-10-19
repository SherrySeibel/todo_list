require "rails_helper"

feature "User created todo list" do
  scenario "successfully" do
    sign_in

    create_todolist "Buy milk"

    expect(page).to display_todo "Buy milk"
  end
end
