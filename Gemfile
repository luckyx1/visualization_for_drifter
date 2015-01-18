source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.4'

# Use postgresql as the database for Active Record
gem 'pg'

#protection
gem 'protected_attributes'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Use puma as the app server
gem 'puma'
gem "rack-timeout"
gem 'jquery_mobile_rails'
gem 'twitter-bootstrap-rails' #added the static bootstrap css

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', :platforms => :ruby

group :production do
  gem 'rails_12factor'
end

group :development do
  gem "better_errors"
  gem 'binding_of_caller'
  # use pry for debugger
  gem 'pry'
  gem 'pry-nav'
  gem 'pry-rails'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
  # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
  gem 'jbuilder', '~> 1.2'
end

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails' # Use CoffeeScript for .js.coffee assets and views
  gem 'uglifier', '>= 1.0.3' # Use Uglifier as compressor for JavaScript assets
  gem 'libv8'
  gem 'less'
  gem 'less-rails'
end