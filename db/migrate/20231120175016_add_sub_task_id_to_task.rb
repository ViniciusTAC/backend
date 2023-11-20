class AddSubTaskIdToTask < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :subTask, :integer
  end
end
