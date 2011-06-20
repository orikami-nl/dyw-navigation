source "http://rubygems.org"

gem 'rails', '3.1.0.rc1'
gem 'sprockets'
gem 'rake', '~> 0.8.7'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sass'
gem 'json'
gem 'coffee-script'
gem 'uglifier'
gem 'jquery-rails'
gem 'simple_form'
gem "carrierwave"
# did apt-get install libmagick9-dev for this to work:
gem 'rmagick'

if RUBY_VERSION < '1.9'
  gem "ruby-debug", ">= 0.10.3"
end

group :test do
	gem "capybara"
	gem "factory_girl_rails"
	gem "cucumber-rails"
	gem "rspec-rails"
	gem "database_cleaner"
	gem "selenium-client"
	gem 'therubyracer'
	gem 'sqlite3'
end

group :development do
	gem 'sqlite3'
	gem 'therubyracer'
end

group :production do
	gem 'pg'
	gem 'therubyracer-heroku'
end
