Rails.application.routes.draw do
  get '/login' => "sessions#new"
  post '/sessions' => "sessions#create"
  get '/logout' => "sessions#destroy"

  resources :students, only: [:new, :create, :show, :index]
  resources :courses, only: [:show, :index]
  resources :teachers, only: [:show, :index]
  resources :seats


  root 'application#index'


end
