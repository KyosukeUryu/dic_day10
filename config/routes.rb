Rails.application.routes.draw do
  resources :blogs, only: [:index, :new, :create, :edit, :update, :show]
  resources :users, only: [:new, :create, :edit, :update, :show]

  root to: 'sessions#tops'

  resources :sessions, only: %i[create destroy new]
end
