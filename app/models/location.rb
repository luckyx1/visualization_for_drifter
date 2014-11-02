class Location < ActiveRecord::Base
	attr_accessible  :latitude, :longitude, :time, :valid_input, :gps_speed, :drifter_name

	def self.to_csv(options = {})
  		CSV.generate(options) do |csv|
    		csv << column_names
    		all.each do |loc|
      			csv << loc.attributes.values_at(*column_names)
    		end
  		end
	end

end

