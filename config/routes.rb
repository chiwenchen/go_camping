Rails.application.routes.draw do

  root 'rentals#index'
  resources :campsites, only: [:index, :new, :create]
  mount Campingsite::API => '/'
end
