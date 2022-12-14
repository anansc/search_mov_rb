Rails.application.routes.draw do
  devise_for :users

  root "home#index"

  resources :agenda_requests
  resources :users
  resources :agendas
  resources :chats
  resources :ratings
  resources :properties
  resources :advertisements
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
