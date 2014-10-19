class Todolist < ActiveRecord::Base
  def completed?
    completed_at?
  end

  def complete!
    touch :completed_at
  end
end
