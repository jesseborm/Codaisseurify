Rails.application.routes.draw do
  root 'artists#index'

  resources :artists do
    resources :songs#, only: [:new, :create]
  end

  # resources :photos
  # get 'songs/new', to: 'songs#new'
end
