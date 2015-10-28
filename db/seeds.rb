# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

MuscleGroup.delete_all
MuscleGroup.create(muscle: 'chest')
MuscleGroup.create(muscle: 'shoulders')
MuscleGroup.create(muscle: 'back')
MuscleGroup.create(muscle: 'legs')
MuscleGroup.create(muscle: 'arms')
