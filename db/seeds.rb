# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Location.create(:drifter_name => "Drifter #1",:latitude => "38.23038", :longitude => "-122.52297", :time => "12:00:01", :valid => true, :gps_speed => "1.9")