class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.string :subtasks
      t.string :comments
      t.date :startDate
      t.date :revisionDate
      t.date :endDate
      t.references :status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
