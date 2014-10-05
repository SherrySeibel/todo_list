require "rails_helper"

feature "User created todo list" do
  scenario "successfully" do
    sign_in

    click_on "Add a new todo"
    fill_in "Title", with: "Buy milk"
    click_on "Submit"

    expect(page).to have_css ".todolists li", text: "Buy milk"
  end
end
