# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create(name: "Stooge 1", hours_allowed: 10.0)
Project.create(name: "Stooge 2", hours_allowed: 20.0)
Project.create(name: "Stooge 3", hours_allowed: 30.0)

Developer.create(name: "Larry", email: "example@gmail.com", password: "password")
Developer.create(name: "Moe", email: "example@yahoo.com", password: "password")
Developer.create(name: "Curly", email: "example@netscape.com", password: "password")

TimeEntry.create(developer_id: 1, hours: 9.5, worked_on: "2015-03-09".to_date, project_id:1)
TimeEntry.create(developer_id: 1, hours: 2.5, worked_on: "2015-03-09".to_date, project_id:2)
TimeEntry.create(developer_id: 2, hours: 6.5, worked_on: "2015-03-09".to_date, project_id:1)
TimeEntry.create(developer_id: 2, hours: 2.5, worked_on: "2015-03-09".to_date, project_id:2)
TimeEntry.create(developer_id: 3, hours: 6.5, worked_on: "2015-03-09".to_date, project_id:1)
TimeEntry.create(developer_id: 3, hours: 2.5, worked_on: "2015-03-09".to_date, project_id:2)
TimeEntry.create(developer_id: 1, hours: 8.5, worked_on: "2015-03-08".to_date, project_id:1)
TimeEntry.create(developer_id: 1, hours: 8.5, worked_on: "2015-03-07".to_date, project_id:1)
TimeEntry.create(developer_id: 1, hours: 8.5, worked_on: "2015-03-06".to_date, project_id:1)
TimeEntry.create(developer_id: 1, hours: 8.5, worked_on: "2015-03-05".to_date, project_id:1)
