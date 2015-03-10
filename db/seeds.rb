# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create(name: "Project 1", hours_allowed: 10.0)
Project.create(name: "Project 2", hours_allowed: 20.0)
Project.create(name: "Project 3", hours_allowed: 30.0)

Developer.create(name: "Jonathan", email: "jsparrish@gmail.com", password: "password")
Developer.create(name: "Jack", email: "jwparrish@gmail.com", password: "password")
Developer.create(name: "Hampton", email: "hsparrish@gmail.com", password: "password")
