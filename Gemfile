source 'https://rubygems.org'

gem 'rails', '4.0.3'

gem 'bootstrap-sass', '~> 3.1.1'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
# gem 'jquery-rails'
# gem 'haml-rails', '= 0.3.4'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
gem 'omniauth'
gem 'rename'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'therubyracer', '~> 0.12.0'
  gem 'sass-rails', '~> 4.0.0'
  gem 'coffee-rails', '~> 4.0.0'
	gem 'uglifier', '>= 1.3.0'
end

group :doc do
	# bundle exec rake doc:rails generates the API under doc/api.
	gem 'sdoc', require: false
end

group :development, :test do
	gem 'sqlite3'
	gem 'database_cleaner'
	gem 'capybara'
	gem 'launchy'
	gem 'rspec-rails'
	gem 'railroady'
	gem 'factory_girl'
	gem 'taps'
	gem 'factory_girl_rails'
end

group :production do
     gem 'pg'
     gem 'rails_12factor'
end
group :test do
	gem 'cucumber-rails', :require => false
	gem 'cucumber-rails-training-wheels'
	gem 'simplecov', :require => false
end
# To use ActiveModel has_secure_password

