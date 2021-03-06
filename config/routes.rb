require 'sidekiq/web'
Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  mount Sidekiq::Web => '/sidekiq'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  root to: 'home#index'

  resources :users, only: [:show]
  resources :events do
    resources :comments
    resources :votes, only: [] do
      collection do
        put :vote
        put :unvote
      end
    end
    collection do
      get :near_me
    end
  end
  
  resources :donations
end
