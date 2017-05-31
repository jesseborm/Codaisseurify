Rails.application.routes.draw do
  root 'artists#index'

  resources :artists do
    resources :songs#, only: [:new, :create]
  end
end
