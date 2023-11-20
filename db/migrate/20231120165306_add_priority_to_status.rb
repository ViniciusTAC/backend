class AddPriorityToStatus < ActiveRecord::Migration[7.1]
  def change
    add_column :statuses, :priority, :integer
  end
end
