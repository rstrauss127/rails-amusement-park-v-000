Rails.application.routes.draw do
  root 'welcome#home'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'


  delete '/logout',  to: 'sessions#destroy'
  resources :users, only: [:new, :create, :show]
  resources :attractions, only: [:new, :create, :show, :index, :edit, :update]
  resources :rides, only: [:new, :create]
end
