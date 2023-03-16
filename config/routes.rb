# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :authors
  root 'posts#index'
  resources :posts do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "ar:stringticles#index"
end
