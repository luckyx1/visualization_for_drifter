#pushes current data on leaflet dev to heroku
createdb mytempdb
pg_dump -U postgres  leaflet_development | psql -U postgres -d mytempdb
heroku pg:reset HEROKU_POSTGRESQL_GOLD --app drifter-visualization
heroku run rake db:migrate
PGUSER=Erick_laptop heroku pg:push mytempdb HEROKU_POSTGRESQL_GOLD_URL --app drifter-visualization
heroku run rake db:seed
dropdb mytempdb

