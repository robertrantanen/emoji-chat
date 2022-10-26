# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users, only: %i[new create]
  resources :rooms, only: %i[new create index show]
  resources :messages, only: %i[new create]
  resource :session, only: %i[new create destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'rooms#index'
  get 'signup', to: 'users#new'
  get 'signin', to: 'sessions#new'
  delete 'signout', to: 'sessions#destroy'
end
