# frozen_string_literal: true

# Configure Flipper with the ActiveRecord adapter (backed by the primary database)
require "flipper"
require "flipper/adapters/active_record"

Flipper.configure do |config|
  config.default do
    Flipper.new(Flipper::Adapters::ActiveRecord.new)
  end
end
