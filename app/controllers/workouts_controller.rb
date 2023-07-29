class WorkoutsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_workout_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

  def index
    workouts = Workout.all
    render json: workouts, status: :ok
  end

  def show
    workout = find_workout
    render json: workout, status: :ok
  end

  def create
    workout = Workout.create!(workout_params)
    render json: workout, status: :created
  end

  def workout_edit
    user = User.find_by(id: params[:user_id])
    if user
      workout = user.workouts.find(params[:id])
      workout.update(workout_params)
      render json: workout, status: :ok
    end
  end
  

  private
  def find_workout
    Workout.find(params[:id])
  end

  def render_workout_not_found
    render json: {error: "Workout not found!"}, status: :not_found
  end

  def workout_params
    params.permit( :user_id, :exercise_id, :name, :intensity_target, :time_target, :intensity_achieved, :time_taken, :additional_notes )
  end

  def render_unprocessable_entity(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
  end
