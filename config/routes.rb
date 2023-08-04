Rails.application.routes.draw do
  resources :exercise_body_parts
  resources :exercise_equipments
  resources :exercises
  resources :equipment, only: [:index, :show]
  resources :body_parts, only: [:index, :show]
  resources :workouts, only: [:index, :show]
  resources :fitnesses, only: [:index, :show, :create]
  resources :users, only: [:index, :show] do
    patch 'workouts/:id', to: 'workouts#workout_edit'
    delete 'workouts/:id', to: 'workouts#delete'
    post 'workouts', to: 'workouts#workout_create'
  end

  post '/users', to: 'users#create'
  post '/signup', to: "users#create"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
end
