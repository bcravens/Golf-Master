Rails.application.routes.draw do

  resources :courses do
    resources :holes
  end

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
