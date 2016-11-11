Rails.application.routes.draw do
  
  resources :holes

  resources :courses do
    resources :holes
  end

  resources :users
  resource :session

end
