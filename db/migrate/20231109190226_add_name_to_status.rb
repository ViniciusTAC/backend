class AddNameToStatus < ActiveRecord::Migration[7.1]
  def change
    add_column :statuses, :color, :string
  end
end
