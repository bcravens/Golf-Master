Rails.application.routes.draw do

  resources :courses do
    resources :holes
  end

  resources :groups do
    resources :memberships
  end

  resources :users do
    resources :memberships
  end

  resources :holes
  resources :bets
  resource :session
  resources :events

  end
