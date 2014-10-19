module Features
  def create_todolist(todo_title)
    click_on "Add a new todo"
    fill_in "Title", with: todo_title
    click_on "Submit"
  end

  def display_todo(todo_title)
    have_css ".todolists li", text: todo_title
  end

  def display_completed_todo(todo_title)
    have_css ".todolists li.completed", text: todo_title
  end
end
