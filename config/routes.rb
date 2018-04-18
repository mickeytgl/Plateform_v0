Rails.application.routes.draw do

  require 'sidekiq/web'

  resources :dinners do
    resources :reviews, module: :dinners
    resources :reservations, only: [:new, :create, :destroy], controller: 'dinners/reservations'
  end

  get 'users/profile/:id' => 'users#show'
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'

  namespace :admin do
    resources :users
    resources :announcements

    root to: "users#index"
  end
  resources :announcements, only: [:index]
  #authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  #end

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources  :users do
    resources :payment_sources, only: [:index, :new, :create, :destroy], controller: 'users/payment_sources'
  end
end
