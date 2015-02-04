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

	def get_elms(nums)
		nums = 1 if nums == 0
		val = Location.where(drifter_name: "Drifter ##{nums}")
		val.order("created_at DESC").limit(5) if val
	end
end
