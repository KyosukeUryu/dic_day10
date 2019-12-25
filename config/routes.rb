Rails.application.routes.draw do
  root to: 'sessions#tops'

  resources :sessions, only: %i[create destroy new]
end
