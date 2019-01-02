Rails.application.routes.draw do
  get 'home/index'
  resources :students, only: [:new, :create, :show, :index]

  get 'home/index'
  root 'home#index'


end
