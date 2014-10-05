Rails.application.routes.draw do
  root to: 'todolists#index'

  resource :session, only: [:new, :create]
  resources :todolists, only: [:index, :new, :create]
end
