Rails.application.routes.draw do

  require 'sidekiq/web'

  resources :dinners do 
    resources :reviews, module: :dinners 
    resources :payments, only: [:new, :create, :destroy], controller: 'dinners/payments'
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
end
