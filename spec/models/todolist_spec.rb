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
