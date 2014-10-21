Rails.application.routes.draw do
  root to: "todolists#index"

  resources :todolists, only: [:index, :new, :create] do
    resource :completion, only: [:create, :destroy]
  end

  resource :session, only: [:new, :create]
end
