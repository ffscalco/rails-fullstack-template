# frozen_string_literal: true

# Configure Flipper with Redis adapter
require "flipper"
require "flipper/adapters/redis"

redis_url = ENV.fetch("REDIS_FOR_CACHE_URL", "redis://localhost:6379/1")
redis = Redis.new(url: redis_url)
redis_adapter = Flipper::Adapters::Redis.new(redis)

Flipper.configure do |config|
  config.default do
    Flipper.new(redis_adapter)
  end
end
