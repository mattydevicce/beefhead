class MuscleGroup < ActiveRecord::Base
	has_and_belongs_to_many :schedules
end
