require "rails_helper"

describe Todolist, "#completed?" do
  it "returns true if completed_at is set" do
    todolist = Todolist.new(completed_at: Time.current)

    expect(todolist).to be_completed
  end

  it "returns false if completed_at is nil" do
    todolist = Todolist.new(completed_at: nil)

    expect(todolist).to_not be_completed
  end
end

describe Todolist, "#complete!" do
  it "update completed_at" do
    todolist = Todolist.create!(completed_at: nil)

    todolist.complete!

    todolist.reload

    expect(todolist).to be_completed
  end
end

describe Todolist, "#mark_complete!" do
  it "sets completed_at to nil" do
    todolist = Todolist.create!(completed_at: Time.current)

    todolist.mark_incomplete!

    todolist.reload

    expect(todolist).not_to be_completed
  end
end
