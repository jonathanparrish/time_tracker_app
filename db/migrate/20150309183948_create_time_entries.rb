class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.integer :developer_id
      t.decimal :hours
      t.date :worked_on
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
