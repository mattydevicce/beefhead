class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.datetime :time
      t.references :gym, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
