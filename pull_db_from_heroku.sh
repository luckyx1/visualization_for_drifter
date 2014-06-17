#pull heroku and store it as mydbleaf
createdb mydbleaf
dropdb mydbleaf
heroku pg:pull HEROKU_POSTGRESQL_GOLD mydbleaf --app drifter-visualization
