Rails.application.routes.draw do
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, path: '/dashboard/students'
  resources :courses, path: '/dashboard/courses'
  resources :professors, path: '/dashboard/professors'
  resources :disciplines, path: '/dashboard/disciplines'
  resources :enrollments, path: '/dashboard/enrollments'
end
