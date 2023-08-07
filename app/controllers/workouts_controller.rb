class WorkoutsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_workout_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  skip_before_action :authorize


  def index
    workouts = Workout.all
    render json: workouts, status: :ok
  end

  def show
    workout = find_workout
    render json: workout, status: :ok
  end

  def workout_create
    user = find_user
    workout = user.workouts.create!(workout_params)
    render json: workout, status: :created
  end

  def workout_edit
    user = find_user
    if user
      workout = user.workouts.find(params[:id])
      workout.update(workout_params)
      render json: workout, status: :ok
    end
  end

  def delete
    user = find_user
    workout = user.workouts.find(params[:id])
    if workout.destroy
      render json: { message: "Workout deleted successfully" }, status: :ok
    else
      render json: { error: "Failed to delete workout" }, status: :unprocessable_entity
    end
  end


  private
  def find_workout
    Workout.find(params[:id])
    end

  def find_user
    User.find(params[:user_id])
  end

  def render_workout_not_found
    render json: {error: "Workout not found!"}, status: :not_found
  end

  def workout_params
    params.permit( :user_id, :exercise_id, :name, :intensity_target, :time_target, :intensity_achieved, :time_taken )
  end

  def render_unprocessable_entity(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end

  end
