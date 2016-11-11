Rails.application.routes.draw do

  resources :courses do
    resources :holes
  end
  resources :holes
  resources :bets
  resources :groups
  resources :users
  resource :session

end
