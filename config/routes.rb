Rails.application.routes.draw do
  get 'home/index'
  resources :students, only: [:new, :create, :show, :index]
  resources :courses, only: [:show, :index]
  resources :teachers, only: [:show, :index]
  resources :seats

  get 'home/index'
  root 'home#index'


end
