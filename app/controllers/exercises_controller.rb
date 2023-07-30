class ExercisesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_exercise_not_found
  def index
    exercises = Exercise.all
    render json: exercises, status: :ok
  end

  def show
    exercise = find_exercise
    render json: exercise, status: :ok
  end
  # def create
  #   exercise = Exercise.create!(exercise_params)
  #   render json: exercise, status: :created
  # end

  private
  def exercise_params
    params.permit(:name, :description, :image, :intensity_type)
  end
  def find_exercise
    Exercise.find(params[:id])
  end
  def render_exercise_not_found
    render json: {error: "Exercise not found!"}, status: :not_found
  end
end
