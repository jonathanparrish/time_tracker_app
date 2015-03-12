class AddIndexTimeEntries < ActiveRecord::Migration
  def change
    add_index :time_entries, :developer_id
    add_index :time_entries, :project_id
  end
end
