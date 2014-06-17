#clears temp data on localhost
dropdb leaflet_development
createdb leaflet_development
rake db:migrate