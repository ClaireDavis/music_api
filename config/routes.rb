Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists, only: [:show, :create, :update, :index, :destroy]
  resources :ablums, only: [:show, :create, :update, :index, :destroy]
  resources :songs, only: [:show, :create, :update, :index, :destroy]
end
