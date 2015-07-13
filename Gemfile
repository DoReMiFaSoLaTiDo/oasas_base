source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
#gem 'sdoc', '~> 0.4.0',          group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]

#Include gem for static pages
gem 'high_voltage'

#include bower rails for management of third-party components
gem 'bower-rails'

# Split into groups
  group :development do
    gem 'better_errors' # Better error page
    gem 'binding_of_caller' # Adds functionality to better_errors
    gem 'meta_request'  # Works with RailsPanel in Chrome (Add RailsPanel from google store)
    gem 'rails-erd'  # Drawing Entity Relationship Diagrams using graphviz
  end


  group  :development, :test do
    #gem 'sqlite3'
    gem 'rspec-rails', '2.13.1'  #access to RSpec generators
    gem 'byebug', '3.4.2'  # Successor to 'debugger'
    gem 'faker'
  end
  
  
  group :test do
    gem 'selenium-webdriver', '2.35.1'  # capybara dependency
    gem 'capybara', '2.1.0' #Simulate users BEHAVIOR.
    gem 'spork-rails', '4.0.0'  # To Speed up RSpec
    gem 'factory_girl_rails', '4.2.0'  #Factory to generate data
    gem 'sqlite3'
    #gem 'activerecord-sqlserver-adapter'
  end
  
  # Use Oracle in development i.e., primary or legacy db's
   group :development do
     gem "activerecord-oracle_enhanced-adapter", "~> 1.5.0"
     gem 'ruby-oci8', '~> 2.1.0'
     #gem 'rspec-rails', '2.13.1'
     
     # connection to sql server
     #gem 'tiny_tds'
     #gem 'activerecord-sqlserver-adapter' #, '4.0.0' #, git: 'https://github.com/rails-sqlserver/activerecord-sqlserver-adapter'
   end


  group :production do
    gem "activerecord-oracle_enhanced-adapter", "~> 1.5.0"
    gem 'ruby-oci8', '~> 2.1.0'
    
    # connection to sql server
    #gem 'tiny_tds'
    #gem 'activerecord-sqlserver-adapter' #, '4.0.0' #, git: 'https://github.com/rails-sqlserver/activerecord-sqlserver-adapter'
    # gem 'faker'
  end

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

#group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  # gem 'sdoc', require: false
#end

# Add my GroupedOptions gem for Making Grouped Selects from non-associated database
# gem 'grouped_options', path: '~/projects/gems/grouped_options'
gem 'grouped_options', git: 'https://github.com/marcmentis/grouped_options.git'

# Form Filter for Table Searches
gem 'ransack', git: 'https://github.com/activerecord-hackery/ransack', branch: 'rails-4'

# Authorization
gem 'pundit', '~> 0.3.0'

gem 'populator'
gem 'net-ldap'
