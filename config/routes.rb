Rails.application.routes.draw do
  root to: 'session#new'
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
  get '/signup', to: 'users#new'

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, path: '/dashboard/students'
  resources :courses, path: '/dashboard/courses'
  resources :professors, path: '/dashboard/professors'
  resources :disciplines, path: '/dashboard/disciplines'
  resources :enrollments, path: '/dashboard/enrollments'
  resources :users, path: '/dashboard/users'
end
