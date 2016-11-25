Rails.application.routes.draw do

  root 'courses#index'

  resources :courses do
    resources :holes
  end

  # what resources do you need for memberships under groups that you also need for users, Is there a way to consolidate?
  resources :groups do
    resources :memberships
    resources :events
  end

  resources :users do
    resources :memberships
  end

  resources :events do
    resources :bets
  end

  resources :holes
  resources :bets
  resource :session


  end
