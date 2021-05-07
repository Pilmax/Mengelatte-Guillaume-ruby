Rails.application.routes.draw do
  resources :posters
  devise_for :users
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "posters#index"
  get "/affiches", to: "affiches#index"
end
