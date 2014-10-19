class Todolist < ActiveRecord::Base
  def completed?
    completed_at?
  end
end
