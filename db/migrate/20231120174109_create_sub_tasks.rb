class CreateSubTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :sub_tasks do |t|
      t.string :description
      t.boolean :finished

      t.timestamps
    end
  end
end
