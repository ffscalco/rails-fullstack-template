Rails.application.routes.draw do
  root "dashboard#index"
  resources :dashboard, only: [:index]

  mount(
    Flipper::UI.app do |builder|
      builder.use Rack::Auth::Basic do |username, password|
        username == ENV.fetch("FLIPPER_USERNAME") && password == ENV.fetch("FLIPPER_PASSWORD")
      end
    end,
    at: "/feature_flags"
  )
end
