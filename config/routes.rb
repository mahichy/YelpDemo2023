Rails.application.routes.draw do

  resources :restaurants do 
    resources :reviews, except: [:show, :index]
  end

  devise_for :users
  get 'page/home'
  get 'page/about'
  get 'page/contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "restaurants#index"
end
