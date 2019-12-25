Rails.application.routes.draw do

  resources :users, only: [:new, :create]
  root to: 'sessions#tops'

  resources :sessions, only: %i[create destroy new]
end
