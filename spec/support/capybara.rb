Capybara.register_driver :chrome do |app|
  browser_args = %w[allow-insecure-localhost ignore-certificate-errors disable-gpu window-size=1280,2000 no-sandbox]
  browser_args << "headless" unless ENV["NO_HEADLESS_BROWSER"].present?

  options = Selenium::WebDriver::Chrome::Options.new
  browser_args.each { |arg| options.add_argument(arg) }

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: options
  )
end

Capybara.configure do |config|
  config.default_max_wait_time = 10
end

Capybara.javascript_driver = :chrome
Capybara.server_port = 5001
Capybara.server = :puma, {Silent: true}
Capybara.save_path = "#{Rails.root}/tmp/capybara"
