Rails.application.routes.draw do
  root to: 'todolists#index'

  resources :todolists, only: [:index, :new, :create]
end
