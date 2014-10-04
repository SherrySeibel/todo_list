Rails.application.routes.draw do
  root to: 'todolists#index'

  resource :session, only: [:create]
end
