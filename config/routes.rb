Rails.application.routes.draw do

  get "/courses", to: "courses#index"
   get "/courses/:id", to: "courses#show"
  get 'home/index'
   resources :courses
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root  'home#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
