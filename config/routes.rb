Rails.application.routes.draw do
  resources :postulations
  resources :trabajos
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "trabajos#index"
end
