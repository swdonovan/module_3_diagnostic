source 'https://rubygems.org'


git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'faraday'
gem 'figaro'
gem 'rails', '4.2.5.1'
gem 'sqlite3'
gem 'sass-rails', '~> 5.0.6'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'puma', '~> 3.7'
gem 'turbolinks', '~> 5'

group :development, :test do
    gem 'factory_girl_rails'
    gem 'rack_session_access'
    gem 'pry', :require => "pry"
    # gem 'simplecov'
    gem 'rspec-rails'
    gem 'capybara'
end

group :test do
  gem 'database_cleaner'
  gem 'faker'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem "vcr"
  gem "webmock"
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
