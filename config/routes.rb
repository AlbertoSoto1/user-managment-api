Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create, :update, :destroy]

  post '/login', to: 'sessions#create'
end
