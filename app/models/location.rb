class Location < ActiveRecord::Base
	self.primary_key = "id"
	attr_accessible :address, :latitude, :longitude, :time, :valid_input, :gps_speed
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?


  
end

