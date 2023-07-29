Rails.application.routes.draw do
  resources :exercise_body_parts
  resources :exercise_equipments
  resources :equipment
  resources :body_parts
  resources :workouts, only: [:index, :show, :create]
  resources :fitnesses, only: [:index, :show, :create]
  resources :exercises
  resources :users, only: [:index] do
    patch '/workout/:id', to: 'workouts#workout_edit'
    delete '/workout/:id', to: 'workouts#delete'
  end

  post '/signup', to: "users#create"

end
