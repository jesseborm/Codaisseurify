Rails.application.routes.draw do
  root 'artists#index'

  resources :artists do
    resources :songs#, only: [:new, :edit, :create, :update, :destroy]
  end
  # resources :songs
end
