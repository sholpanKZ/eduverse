Rails.application.routes.draw do

  get 'home/index'
  resources :courses do
    resources :lessons
    resource :quiz
  end

  resources :likes, only: [:create, :destroy]

  devise_for :users

  # Defines the root path route ("/")
  root  'home#index'
end
