Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :challenges, only: :index

  get '/feed', to: 'users#feed'

  resources :challenges, only: :index do
    resources :active_challenges, only: :create
  end

  get '/dashboard', to: 'users#dashboard'

  resources :entries, only: :create

  resources :posts, only: %i[index create]
end
