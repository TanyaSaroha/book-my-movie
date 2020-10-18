Rails.application.routes.draw do
  devise_for :users

  get 'welcome', to: "dashboard#welcome"
  root to: "dashboard#welcome"
  resources :shows do
    resources :bookings
  end
end
