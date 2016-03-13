# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Play.destroy_all
Actor.destroy_all

Play.create!(start_date: '10/04/2016', end_date: '20/04/2016', synopsys: 'spectacle super sympa')
Actor.create!(first_name: 'paul', last_name: 'chenon', birthday: '15/04/1991', gender: 'male')

