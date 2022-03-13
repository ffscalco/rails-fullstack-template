Rails.application.routes.draw do
  root "dashboard#index"

  Rollout::UI::Web.use Rack::Auth::Basic do |username, password|
    username == ENV.fetch("ROLLOUT_USERNAME") && password == ENV.fetch("ROLLOUT_PASSWORD")
  end
  mount Rollout::UI::Web.new => "/feature_flags"
end
