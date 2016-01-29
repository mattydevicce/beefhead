require 'bcrypt'
include BCrypt
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Schedule.delete_all
MuscleGroup.delete_all
User.delete_all
Gym.delete_all


gym = Gym.create(name: 'NYSF', address: '8th and 24th')

matt = User.create(name: 'Matt', email: 'mattt', password: 'matt', password_confirmation: 'matt', gym_id: gym["id"])
puts matt["id"]
User.create(name: 'test', email: 'test', password: 'test', password_confirmation: 'test', gym_id: gym["id"])


chest = MuscleGroup.create(muscle: 'chest')
shoulders = MuscleGroup.create(muscle: 'shoulders')
back = MuscleGroup.create(muscle: 'back')
legs = MuscleGroup.create(muscle: 'legs')
arms = MuscleGroup.create(muscle: 'arms')

muscle_groups = [chest, shoulders, back, legs, arms]
3.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '5:00', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

3.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '5:30', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

5.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '6:00', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

4.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '6:30', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

8.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '7:00', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

4.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '7:30', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

7.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '8:00', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

5.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '8:30', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

4.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '9:00', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

4.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '9:30', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

7.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '10:00', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

4.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '10:30', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

5.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '11:00', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

8.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '11:30', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

8.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '12:00', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

5.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '12:30', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

5.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '13:00', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

4.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '13:30', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

5.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '14:00', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

5.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '14:30', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

5.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '15:00', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

3.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '15:30', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

5.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '16:00', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

6.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '16:30', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

7.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '17:00', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

8.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '18:00', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

6.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '18:30', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

8.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '19:00', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

5.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '19:30', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

5.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '20:00', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

5.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '20:30', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

4.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '21:00', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

4.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '21:30', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end

3.times do |i|
	new_schedule = Schedule.create(gym_id: gym["id"], time: '22:00', date: DateTime.now, user_id: matt["id"])
	new_schedule.muscle_groups << muscle_groups.sample
end