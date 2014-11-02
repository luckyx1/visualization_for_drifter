module LocationsHelper
	def count_drift
		Location.count()
	end

	def first_long
		begin
			Location.first.longitude
		rescue
			false
		end
	end

	def first_lat
		begin
			Location.first.latitude
		rescue
			false
		end
	end
end
