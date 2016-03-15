# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Play.destroy_all
Actor.destroy_all
Theater.destroy_all

Play.create!(start_date: '10/04/2016', end_date: '20/04/2016', synopsys: 'spectacle super sympa', title: 'le retour du roi')
Actor.create!(first_name: 'paul', last_name: 'chenon', birthday: '15/04/1991', gender: 'male')
Actor.create!(first_name: 'charlotte', last_name: 'dupont', birthday: '16/04/1991', gender: 'female')
Theater.create!(name: 'Théatre principal', start_date: '12/05/2016', end_date: '20/06/2016', places: 200)
