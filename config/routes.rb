Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/feed', to: 'users#feed'
  get '/dashboard', to: 'users#dashboard'

  resources :challenges, only: :index do
    resources :active_challenges, only: :create
  end
  
  resources :active_challenges, only: [] do
    resources :active_challenge_days, only: [:create, :update]

  end
  resources :entries, only: :create

  resources :posts, only: %i[index create]
end
