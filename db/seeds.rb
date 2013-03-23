# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Course.create(name: 'Introduction to Java')

Quiz.create(name: 'Quiz 1', user_id: 1, course_id: 1, score: 10)
Quiz.create(name: 'Quiz 2', user_id: 1, course_id: 1, score: 13)
Quiz.create(name: 'Quiz 3', user_id: 1, course_id: 1, score: 12)

Quiz.create(name: 'Quiz 1', user_id: 2, course_id: 1, score: 12)


Assignment.create(name: 'PA 1', user_id: 1, course_id: 1, score: 15)
Assignment.create(name: 'PA 2', user_id: 1, course_id: 1, score: 17)