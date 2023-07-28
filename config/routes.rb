Rails.application.routes.draw do
  resources :exercise_body_parts
  resources :exercise_equipments
  resources :equipment
  resources :body_parts
  resources :workouts
  resources :fitnesses
  resources :exercises
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
