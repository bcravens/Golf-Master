Rails.application.routes.draw do

  resources :courses do
    resources :holes
  end

  resources :groups do
    resources :memberships
  end

  resources :holes
  resources :bets
  resources :users
  resource :session

  end
