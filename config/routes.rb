Rails.application.routes.draw do
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check

  root to: "boats#index"

  resources :boats, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end

  # resources :bookings, only: [:index]


  resources :bookings do
    resources :reviews, only: [:new, :create, :index]
  end

  get 'dashboard', to: 'pages#dashboard'
  resources :users, only: [:update]

end
