source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.0'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Solidus
gem 'solidus_core'
gem 'solidus_api'
gem 'solidus_backend'
gem 'solidus_sample'
gem 'solidus_auth_devise'

# Custom views
gem 'deface'

gem 'bootstrap', '~> 5.2.0'

# S3 AWS
gem "aws-sdk-s3", require: false
gem 'fog-aws'

# Go International !
gem 'solidus_i18n', '~> 2.0'
gem 'rails-i18n'
gem 'kaminari-i18n'
gem 'i18n-tasks', '~> 0.9.37'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Shim to load environment variables from .env into ENV in development.
  gem 'dotenv-rails'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'canonical-rails'
gem 'solidus_support'
gem 'truncate_html'
gem 'view_component', '~> 2.46'

group :development, :test do
  gem 'rspec-rails'
  gem 'apparition', '~> 0.6.0', github: 'twalpole/apparition'
  gem 'rails-controller-testing', '~> 1.0.5'
  gem 'rspec-activemodel-mocks', '~> 1.1.0'
  gem 'solidus_dev_support', '~> 2.5'
end
gem 'canonical-rails'
gem 'solidus_support'
gem 'truncate_html'
gem 'view_component', '~> 2.46'

group :development, :test do
  gem 'rspec-rails'
  gem 'apparition', '~> 0.6.0', github: 'twalpole/apparition'
  gem 'rails-controller-testing', '~> 1.0.5'
  gem 'rspec-activemodel-mocks', '~> 1.1.0'
  gem 'solidus_dev_support', '~> 2.5'
end
