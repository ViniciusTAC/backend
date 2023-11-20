class RenameColumnsInTask < ActiveRecord::Migration[7.1]
  def change
    rename_column :tasks, :startDate, :start_date
    rename_column :tasks, :revisionDate, :revision_date
    rename_column :tasks, :endDate, :end_date
  end
end
