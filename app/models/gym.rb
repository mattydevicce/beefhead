class Gym < ActiveRecord::Base
	has_many :users
	has_many :schedules
end
