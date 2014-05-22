class Location < ActiveRecord::Base
	attr_accessible :address, :latitude, :longitude, :time, :valid_input, :gps_speed, :drifter_name
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?


  
end

