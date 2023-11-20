class RemoveColorFromTask < ActiveRecord::Migration[7.1]
  def change
    remove_column :tasks, :color, :string
  end
end
