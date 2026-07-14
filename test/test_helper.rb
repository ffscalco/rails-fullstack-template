if ENV["COVERAGE"] == "on"
  require "simplecov"

  SimpleCov.start "rails" do
    enable_coverage :branch
  end
end

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

# Rails by default logs everything that is happening in your test environment to "log/test.log".
# By increasing the logger level, you will be able to reduce the IO during your tests.
# The only downside of this approach is that, if a test is failing, you won't have anything logged.
# In such cases, just run your tests with: WITH_LOG=on bin/rails test
Rails.logger.level = 4 unless ENV["WITH_LOG"]

module ActiveSupport
  class TestCase
    fixtures :all

    parallelize(workers: :number_of_processors)

    # Support for SimpleCov with parallel test workers
    parallelize_setup do |worker|
      SimpleCov.command_name "#{SimpleCov.command_name}-#{worker}" if ENV["COVERAGE"] == "on"
    end

    parallelize_teardown do |worker|
      SimpleCov.result if ENV["COVERAGE"] == "on"
    end
  end
end
