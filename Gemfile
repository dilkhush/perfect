source 'https://rubygems.org'
# Always run the latest version of all gems unless
# absolutely necessary. Much easier to fix one or two
# bits as you go along rather than huge changes
# between major version releases.

# Standard Rails Stuff

gem 'rails', '~> 5.2.2'
group :production do
  gem 'pg'
  gem 'rails_12factor'
end
gem 'sendgrid'
group :development, :test do
  gem 'mysql2'
end
gem 'jquery-rails'
gem 'jquery-ui-rails'

# # App Specific Stuff
gem 'bcrypt-ruby', '3.1.2'
gem 'chargify_api_ares', '0.4.4'
gem 'execjs'
gem 'will_paginate', '~> 3.0.3'
gem 'acts_as_list'
gem 'ejs', '~> 1.1.1'
gem 'money'
gem 'httparty', '~> 0.10.2'
gem 'prawn', '~> 0.12.0'
gem 'google-api-client', '~> 0.11'
gem 'wicked_pdf'
gem 'paperclip'
gem 'aws-sdk'
gem 'dropbox-sdk', '~> 1.6.1'
gem 'jbuilder'
gem 'clbustos-rtf', :require => 'rtf'
gem 'icalendar'
gem 'pundit'
gem 'faker'
gem 'rdiscount'
gem 'hopskip', github: 'dilkhush/hopskip'
# Rails 4 update support
gem 'protected_attributes_continued'
gem 'activeresource' # https://github.com/rails/activeresource
gem 'actionpack-action_caching' # https://github.com/rails/actionpack-action_caching
gem 'activerecord-session_store' # https://github.com/rails/activerecord-session_store
gem 'rails-observers' # https://github.com/rails/rails-observers
# Note that there might be more functionalities that were extracted
gem 'record_tag_helper', '~> 1.0'
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
  gem 'therubyracer'
end

group :test do
  gem 'jasminerice', github: 'bradphelan/jasminerice'
  gem 'guard-jasmine'
  gem 'mocha', '~> 0.13.3', :require => false
  gem 'simplecov', :require => false
  gem 'guard-test'
  gem 'rb-fsevent', '~> 0.9'
  gem 'delorean'
  gem 'factory_girl_rails'
  gem 'growl'
  gem 'ruby-prof'
  gem 'rails-perftest'
  gem 'test-unit'
  gem 'rails-controller-testing'
  gem 'minitest', '5.10.3'
  gem 'shoulda-matchers'
end

group :development do
  gem 'puma'
end

group :test, :development do
  gem 'byebug'
end

gem 'newrelic_rpm'
# gem 'ey_config'
gem 'exception_notification', '~> 2.6.1'

