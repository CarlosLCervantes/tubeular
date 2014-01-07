source 'https://rubygems.org'
#export PATH=$PATH:~/AWS/AWS-ElasticBeanstalk-CLI-2.5.1/eb/macosx/python2.7/
ruby '1.9.3'

gem 'rails', '4.0.0' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'mysql2' # Use mysql as the database for Active Record
gem 'bcrypt-ruby', '~> 3.0.0' # Use ActiveModel has_secure_password
#gem 'turbolinks'# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'jbuilder', '~> 1.2' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder

####Active Admin####
#gem 'activeadmin',         github: 'gregbell/active_admin', branch: 'rails4'
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'ransack'#,             github: 'ernie/ransack',         branch: 'rails-4'
gem 'inherited_resources', github: 'josevalim/inherited_resources'
gem 'formtastic',          github: 'justinfrench/formtastic'
###########################

gem 'kaminari' #dependency of AA
gem 'devise' #dependency of AA
gem 'settingslogic'

gem 'sass-rails', '~> 4.0.0' # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.0.0'# Use CoffeeScript for .js.coffee assets and views
gem 'jquery-rails' # Use jquery as the JavaScript library

#### Twitter Bootstrap ####
gem "therubyracer"
#gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
#gem "twitter-bootstrap-rails", github: 'seyhunak/twitter-bootstrap-rails', branch: 'bootstrap3'
gem 'bootstrap-sass-rails'
###########################
gem 'bourbon' #dependency of AA

#### FORUMS ####
gem 'forem', :github => "radar/forem", :branch => "rails4"
gem 'forem-bootstrap', :github => "radar/forem-bootstrap"
gem 'friendly_id', github: "FriendlyId/friendly_id"
gem 'cancan', git: "https://github.com/nukturnal/cancan.git"
###########################

gem 'debugger', group: [:development, :test]
gem 'rspec-rails', group: [:development, :test]

group :test do
	gem 'capybara'
	gem 'factory_girl_rails'
	gem 'guard-rspec'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :production do
	gem 'rails_12factor' #additional heroku platform features
	gem 'rails_serve_static_assets' #heroku issue
	gem 'sentry-raven'
	gem 'newrelic_rpm'
end

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development