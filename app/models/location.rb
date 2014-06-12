class Location < ActiveRecord::Base
	attr_accessible  :latitude, :longitude, :time, :valid_input, :gps_speed, :drifter_name
end

