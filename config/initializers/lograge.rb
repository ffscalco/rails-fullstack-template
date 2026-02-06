Rails.application.configure do
  config.lograge.enabled = true
  config.lograge.base_controller_class = "ActionController::Base"

  config.lograge.custom_options = lambda do |event|
    {
      request_id: event.payload[:request_id],
      ip: event.payload[:ip]
    }.compact
  end
end
