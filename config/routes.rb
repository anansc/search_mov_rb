Rails.application.routes.draw do
  root to: "home#index"

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
