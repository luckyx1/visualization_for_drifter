json.array!(@locations) do |location|
  json.extract! location, :id, :address, :latitude, :longitude, :time, :valid, :gps_speed
  json.url location_url(location, format: :json)
end
