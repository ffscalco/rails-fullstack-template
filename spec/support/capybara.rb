Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument("--headless") unless ENV["NO_HEADLESS_BROWSER"].present?
  options.add_argument("--allow-insecure-localhost")
  options.add_argument("--ignore-certificate-errors")
  options.add_argument("disable-gpu")

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    capabilities: [options]
  )
end

Capybara.javascript_driver = :chrome
