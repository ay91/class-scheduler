Rails.application.routes.draw do
  root 'home#index'
  post :add_course, to: 'course#add_course'
  devise_for :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
