Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/feed', to: 'users#feed'
  get '/dashboard', to: 'users#dashboard'
  resources :challenges, only: :index do
    resources :active_challenges, only: :create
  end

  get "/results", to: 'users#results'

  resources :user, only: :dashboard do
    resources :friendships, only: :create
  end

  resources :active_challenges, only: [:create, :destroy] do

    resources :active_challenge_days, only: [:create, :update]

  end
  resources :entries, only: :create


  resources :posts, only: %i[index create update destroy]
end
