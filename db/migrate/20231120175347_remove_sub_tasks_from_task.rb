class RemoveSubTasksFromTask < ActiveRecord::Migration[7.1]
  def change
    remove_column :tasks, :subTask, :integer
  end
end
