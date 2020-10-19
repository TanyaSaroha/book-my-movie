Rails.application.routes.draw do
  devise_for :users

  get 'welcome', to: "dashboard#welcome"
  root to: "dashboard#welcome"
  resources :shows do
    resources :bookings
  end

  namespace :admin do
    resources :screens, only: [:index] do
      resources :shows, only: [:index, :new, :create, :show] do
        resources :seats, only: [:index]
      end
    end
  end
end
