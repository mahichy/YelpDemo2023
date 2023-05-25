Rails.application.routes.draw do
  resources :restaurants
  devise_for :users
  get 'page/home'
  get 'page/about'
  get 'page/contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "page#home"
end
