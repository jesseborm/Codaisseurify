Rails.application.routes.draw do
  root 'artists#index'

  resources :artists do
    resources :songs#, only: [:new, :create]
    # resources :photos
  end
  resources :photos
  # resources :songs
end
