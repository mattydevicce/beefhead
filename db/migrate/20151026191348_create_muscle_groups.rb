class CreateMuscleGroups < ActiveRecord::Migration
  def change
    create_table :muscle_groups do |t|
    	t.string :muscle
      t.timestamps null: false
    end
  end
end
