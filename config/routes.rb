Rails.application.routes.draw do
  get '/login' => "sessions#new"
  post '/sessions' => "sessions#create"
  get '/logout' => "sessions#destroy"
  get '/home' => "application#home"
  post '/courses/:course_id/add' => "seats#add"
  delete '/courses/:course_id/drop' => "seats#drop"
  get 'students/:id/courses' => "students#courses"
  post 'students/:followed_student_id/follow' => "relationships#follow"
  delete 'students/:followed_student_id/unfollow' => "relationships#unfollow"

  resources :students, only: [:new, :create, :show, :index]
  resources :courses, only: [:show, :index]
  resources :teachers, only: [:show, :index]
  resources :seats


  root 'application#index'


end
