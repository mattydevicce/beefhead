class CreateMuscleGroupsSchedulesJoinTable < ActiveRecord::Migration
  create_table :muscle_groups_schedules, id: false do |t|
  	t.belongs_to :schedule, index: true
  	t.belongs_to :muscle_group, index: true
  end
end
