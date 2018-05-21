source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# ruby 2.4.1

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.5'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
# Sass-powered version of Bootstrap 3
gem 'bootstrap-sass'
# This gem provides a simple and extremely flexible way to upload files from Ruby applications.
gem 'carrierwave', '~> 1.0'
# Devise is a flexible authentication solution for Rails based on Warden.
gem 'devise'
# Elasticsearch integrations for ActiveModel/Record and Ruby on Rails
gem 'elasticsearch-model'
gem 'elasticsearch-rails'
# Enables Haml as the templating engine
gem 'haml-rails'
# A gem to automate using jQuery with Rails
gem 'jquery-rails'
# A ruby wrapper for ImageMagick
gem 'mini_magick'
# OmniAuth strategy for authenticating to socials
gem 'omniauth-facebook', '~> 4.0'
gem 'omniauth-github'
gem 'omniauth-google-oauth2'
gem 'omniauth-instagram'
gem 'omniauth-twitter', github: 'arunagw/omniauth-twitter'
# Scaleable authorization system
gem 'pundit'
# Integrate React.js with Rails views and controllers, the asset pipeline, or webpacker.
gem 'react-rails'
# A Ruby client that tries to match Redis' API one-to-one, while still providing an idiomatic interface.
gem 'redis', '~> 3.2'
# Webpacker makes it easy to use the JavaScript pre-processor and bundler webpack 4.x.x+ to manage application-like JavaScript in Rails.
gem 'webpacker', '~> 3.4'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  # A Ruby gem to load environment variables from `.env`.
  gem 'dotenv-rails'
  # Provides the HTTP API described by the WebDriver protocol to communicate with Gecko browsers
  gem 'geckodriver-helper'
  # WebDriver is a tool for writing automated tests of websites.
  gem 'selenium-webdriver'
end

group :test do
  # Database Cleaner is a set of strategies for cleaning your database in Ruby.
  gem 'database_cleaner'
  # A library for setting up Ruby objects as test data.
  gem 'factory_bot'
  # A library for generating fake data such as names, addresses, and phone numbers.
  gem 'faker', git: 'https://github.com/stympy/faker.git', branch: 'master'
  # This gem brings back assigns to your controller tests as well as assert_template to both controller and integration tests.
  gem 'rails-controller-testing'
  # Testing framework
  gem 'rspec-rails'
  # Collection of testing matchers extracted from Shoulda
  gem 'shoulda-matchers', '~> 3.1'
  # SimpleCov is a code coverage analysis tool for Ruby
  gem 'simplecov', require: false
end

group :development do
  # Add a comment summarizing the current schema
  gem 'annotate'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # RuboCop is a Ruby static code analyzer.
  gem 'rubocop', require: false
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
