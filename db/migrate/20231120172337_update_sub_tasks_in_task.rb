class UpdateSubTasksInTask < ActiveRecord::Migration[7.1]
  def change
    update("UPDATE tasks SET subtasks = null")
  end
end
