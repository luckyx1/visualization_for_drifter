# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Location.delete_all
Location.create(:drifter_name => "Drifter #1",:latitude => "37.86977", :longitude => "-122.25972", :time => "12:00:01", :valid => true, :gps_speed => "1.9")
Location.create(:drifter_name => "Drifter #1",:latitude => "37.8744", :longitude => "-122.25968", :time => "12:00:06", :valid => true, :gps_speed => "12.1")