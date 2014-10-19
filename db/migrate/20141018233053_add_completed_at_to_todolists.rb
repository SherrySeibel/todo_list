class AddCompletedAtToTodolists < ActiveRecord::Migration
  def change
    add_column :todolists, :completed_at, :timestamp
  end
end
