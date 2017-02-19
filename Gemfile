source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.0'

gem 'active_model_serializers', '~> 0.10.4'

gem 'devise', '~> 4.2'

gem 'pry-rails', '~> 0.3.4'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'factory_girl_rails', '~> 4.8'
  gem 'rspec-rails', '~> 3.5', '>= 3.5.2'
  gem 'ffaker', '~> 2.4'
  gem 'byebug', platform: :mri
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.1'
  gem 'rspec-collection_matchers'
  gem 'capybara', '~> 2.12'
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
