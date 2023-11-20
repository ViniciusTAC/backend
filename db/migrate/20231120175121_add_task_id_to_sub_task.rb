class AddTaskIdToSubTask < ActiveRecord::Migration[7.1]
  def change
    add_reference :sub_tasks, :task, null: false, foreign_key: true
  end
end
