source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'breadcrumbs_on_rails'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'friendly_id', '~> 5.2', '>= 5.2.4'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'mail_form', '~> 1.7', '>= 1.7.1'
gem 'paperclip', '~> 6.0.0'
gem 'puma', '~> 3.7'
gem 'pygments.rb', '~> 1.2', '>= 1.2.1'
gem 'rails', '~> 5.1.5'
gem 'redcarpet', '~> 3.4'
gem 'sass-rails', '~> 5.0'
gem 'therubyracer'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'will_paginate', '~> 3.1', '>= 3.1.6'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'sqlite3'
  gem 'web-console', '>= 3.3.0'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
