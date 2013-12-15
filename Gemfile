source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'
gem 'devise'

gem 'simple_form'

gem 'rails_admin'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem 'mysql2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :development, :test do
  gem 'better_errors'
  gem 'rr'
  gem 'rspec'
  gem 'fabrication'
  gem 'rails-erd'
  gem 'turnip'
  gem 'i18n_generators'
  gem 'awesome_print'
  gem 'letter_opener'
  gem 'rack-mini-profiler', group: :staging #パフォーマンス計測ツール
  gem 'tapp-awesome_print'
  gem 'wirble'
  gem 'rspec-rails', '~> 2.6'
  gem 'factory_girl_rails', '~> 1.2'
  gem 'ffaker'
  gem 'database_cleaner'
  gem 'parallel_tests'
  gem 'byebug'
  gem 'poltergeist'
end

group :development do
  gem 'erb2haml'
  gem 'i18n_generators'
  gem 'rails-erd'
  gem 'capistrano', :require => nil #デプロイツール
  gem 'capistrano-ext', :require => nil
  gem 'capify-ec2', '~> 1.2.5', :require => nil
  gem 'guard-rspec'
  gem 'growl'
  gem 'letter_opener'
  gem 'launchy'
  gem 'sextant'
  gem 'rails_best_practices'
  gem 'quiet_assets'
  gem 'thin', require: false #軽量Rackサーバー
  gem 'pry-remote'
  gem 'pry-nav'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request', '0.2.5'
  gem 'traceroute'
  gem 'roo'
  gem 'xray-rails'
  gem 'bullet'
  gem 'zeus', require: false
  gem 'rubocop', require: false
  gem 'nkss-rails', git: 'git://github.com/nadarei/nkss-rails'
end