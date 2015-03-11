class AddHoursWorkedColumnToDeveloperTable < ActiveRecord::Migration
  def change
    add_column :developers, :total_hours, :decimal
  end
end
