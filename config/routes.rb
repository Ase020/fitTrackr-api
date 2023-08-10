Rails.application.routes.draw do
  resources :exercise_body_parts
  resources :exercise_equipments
  resources :exercises
  resources :equipment, only: [:index, :show]
  resources :body_parts, only: [:index, :show]
  resources :workouts, only: [:index, :show]
  resources :users, only: [:index, :show, :update] do
  resources :fitnesses, only: [:index, :show, :create]
    patch 'workouts/:id', to: 'workouts#workout_edit'
    delete 'workouts/:id', to: 'workouts#delete'
    post 'workouts', to: 'workouts#workout_create'
  get '/user_workouts', to: 'workouts#user_workouts'
  end

  post '/users', to: 'users#create'
  post '/signup', to: "users#create"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
end
