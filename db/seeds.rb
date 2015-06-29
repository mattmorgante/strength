# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

legs = Workout.create(date: '2015-01-01', name: 'Legs', energy: '8', length: '60', time_of_day: 'Evening')
back_and_biceps = Workout.create(date: '2015-01-02', name: 'Back and Biceps', energy: '6', length: '45', time_of_day: 'Morning')

['Squat', 'Dead Lift'].each do |ex| 
  legs.exercises.create(name: ex)
end 

['Lat Pull Down', 'Pull Ups'].each do |ex|
  back_and_biceps.exercises.create(name: ex)
end

 