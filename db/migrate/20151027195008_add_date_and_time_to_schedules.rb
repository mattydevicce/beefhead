class AddDateAndTimeToSchedules < ActiveRecord::Migration
  def change
  	add_column :schedules, :time, :time
  	add_column :schedules, :date, :date
  end
end
