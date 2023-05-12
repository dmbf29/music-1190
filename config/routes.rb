Rails.application.routes.draw do
  # get "/search", to: "songs#search"
  # get "/songs/named/:name", to: "songs#search"

  # verb '/path', to: 'controller#action', as: :prefix
  # CRUD routes

  # get '/songs/new', to: 'songs#new', as: :new_song
  # post '/songs', to: 'songs#create', as: :songs
  # get '/songs', to: 'songs#index'
  # delete '/songs/:id', to: 'songs#destory', as: :song
  # get '/songs/:id', to: 'songs#show'
  # get '/songs/:id/edit', to: 'songs#edit', as: :edit_song
  # patch '/songs/:id', to: 'songs#update'

  resources :songs do
    resources :reviews, only: [:new, :create]
  end
end
