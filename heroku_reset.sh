#removes the current db and prepares it for new data
heroku pg:reset HEROKU_POSTGRESQL_GOLD --app drifter-visualization
heroku run rake db:migrate
#heroku run rake db:seed no seeds yet