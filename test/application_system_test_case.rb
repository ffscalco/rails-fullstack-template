require "test_helper"
require "capybara/cuprite"

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
