source 'http://rubygems.org'

gem 'rails', '3.1.2'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'mongoid'
gem 'bson_ext'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5.rc.2'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'haml_coffee_assets'
  gem 'execjs'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test, :development do
  gem 'awesome_print'
  gem 'pry'
  gem 'pry-doc'
  gem 'mongoid-rspec'
  gem 'turn', '~> 0.8.3', :require => false
  gem 'cucumber-rails'
  gem 'rspec-rails'
  gem 'spork', '~> 0.9.0.rc'
  gem 'guard-spork'
  gem 'guard-cucumber'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'guard-jasmine'
  gem 'jasminerice'
  gem 'database_cleaner'
  gem 'pry'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'

  if RUBY_PLATFORM =~ /darwin/i
    gem 'rb-fsevent'
    gem 'growl_notify'
  end
end

gem 'rails-backbone'
gem 'haml-rails'
