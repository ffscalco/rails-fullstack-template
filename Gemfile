source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby_version = File.read(".tool-versions").match(/^ruby\s+(\S+)/)[1]
ruby ruby_version

# System gems
# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8"
# Use postgresql as the database for Active Record
gem "pg"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma"
# Use Redis adapter to run Action Cable in production
gem "redis"
gem "sentry-ruby"
gem "sentry-rails"
gem "strong_migrations"
gem "pagy"
gem "mailgun-ruby"
gem "slim-rails"
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[windows jruby]
# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "thruster", require: false

# front end
# The asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft"
# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
gem "font-awesome-rails"
gem "loaf"
# Components for views
gem "view_component"

# user management
gem "action_policy"

# Feature flags
gem "flipper"
gem "flipper-redis"
gem "flipper-ui"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri windows]
  gem "factory_bot_rails"
  gem "rspec-rails"
  gem "faker"
  gem "dotenv-rails"
  gem "standard"
  gem "brakeman", require: false
  gem "bundle-audit", require: false
  gem "better_errors"
  gem "ruby-lsp"
  gem "ruby-lsp-rails"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
  gem "bullet"
  gem "letter_opener"
  gem "reek"
  gem "foreman"
end

group :test do
  gem "selenium-webdriver"
  gem "capybara"
  gem "fakeredis", require: "fakeredis/rspec"
  gem "simplecov", require: false
  gem "fuubar"
  gem "launchy"
end
