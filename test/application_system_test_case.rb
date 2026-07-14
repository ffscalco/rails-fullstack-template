require "test_helper"
require "capybara/cuprite"

# Ferrum's exception constants are only available after "capybara/cuprite" is
# required above, so the retry is wired up here rather than in test_helper.rb
# (unit runs never load Cuprite, and referencing these constants there would
# raise NameError). Gated on CI: parallel system-test workers each launch their
# own headless Chrome at suite start, and under CI CPU contention that launch
# can time out or the browser can die before the first command reaches it.
# Retrying only these Ferrum launch/crash exceptions gives the worker a fresh
# Chrome without masking real failures — assertion failures are never retried.
if ENV["CI"]
  require "minitest/retry"

  Minitest::Retry.use!(
    retry_count: 2,
    exceptions_to_retry: [
      Ferrum::ProcessTimeoutError,
      Ferrum::DeadBrowserError,
      Ferrum::PendingConnectionsError
    ]
  )
end

Capybara.register_driver :cuprite do |app|
  Capybara::Cuprite::Driver.new(
    app,
    window_size: [1280, 2000],
    timeout: 10,
    headless: !ENV["NO_HEADLESS_BROWSER"],
    browser_options: {
      "no-sandbox" => nil,
      "disable-gpu" => nil
    }
  )
end

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :cuprite
end
