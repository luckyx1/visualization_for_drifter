json.array!(@locations) do |location|
  json.extract! location, :id, :latitude, :longitude, :time, :valid_input, :gps_speed
  json.url location_url(location, format: :json)
end
