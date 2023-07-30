Rails.application.routes.draw do
  resources :exercise_body_parts
  resources :exercise_equipments
  resources :exercises
  resources :equipment, only: [:index, :show]
  resources :body_parts, only: [:index, :show]
  resources :workouts, only: [:index, :show, :create]
  resources :fitnesses, only: [:index, :show, :create]
  resources :users, only: [:index, :show] do
    patch '/workout/:id', to: 'workouts#workout_edit'
    delete '/workout/:id', to: 'workouts#delete'
  end

  post '/signup', to: "users#create"

end
