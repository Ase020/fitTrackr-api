class ExercisesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_exercise_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  skip_before_action :authorize, only: [:index, :show]
  def index
    exercises = Exercise.all
    render json: exercises, status: :ok
  end

  def show
    exercise = find_exercise
    render json: exercise, status: :ok
  end
  def create
    image = Cloudinary::Uploader.upload(params[:image])
    exercise = Exercise.create(name:params[:name], description:params[:description], intensity_type:params[:intensity_type], image: image['url'])
    render json: exercise, status: :created
  end

  private
  def exercise_params
    params.permit(:name, :description,:image, :intensity_type)
  end
  def find_exercise
    Exercise.find(params[:id])
  end
  def render_exercise_not_found
    render json: {error: "Exercise not found!"}, status: :not_found
  end

  def render_unprocessable_entity(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
end
