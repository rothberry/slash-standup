Rails.application.routes.draw do
  resources :responses, only: [:index, :show]
  resources :questions, only: [:index, :show]
  resources :users, only: [:index, :show]
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post "slack/events", to: "slack#slashcommand"
  post "slack/interact", to: "slack#interactivity"
  post "slack/menu", to: "slack#menu"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
