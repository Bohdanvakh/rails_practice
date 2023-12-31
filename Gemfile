source "https://rubygems.org"

ruby "3.1.4"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.2"

# Use pg as the database for Active Record
# gem "sqlite3", "~> 1.4"
gem 'pg', '~> 1.5', '>= 1.5.4'

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# Use jbuilder for providing JSON structures via a Builder-style DSL [https://github.com/rails/jbuilder]
gem 'jbuilder', '~> 2.11', '>= 2.11.5'

# Use Pry as your rails console [https://github.com/pry/pry-rails]
gem 'pry-rails', '~> 0.3.9'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
# gem "rack-cors"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ]

  # Use rspec-rails for testing your application [https://github.com/rspec/rspec-rails]
  gem 'rspec-rails'

  # Use factory_bot for creating factories for tests [https://github.com/thoughtbot/factory_bot]
  gem 'factory_bot_rails'

  # Use faker for providing random information for factories [https://github.com/faker-ruby/faker]
  gem 'faker', '~> 3.2'

  # Use shoulda-matchers for testing models [https://github.com/thoughtbot/shoulda-matchers]
  gem 'shoulda-matchers', '~> 5.3'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end
