class FitnessesController < ApplicationController
  rescue_from ActiveRecord:: RecordNotFound, with: :render_fitness_not_found
  skip_before_action :authorize
  def index
    user = find_user
    fitnesses = user.fitnesses
    render json: fitnesses, status: :ok
  end

  def show
    user = find_user
    fitness_history = user.fitnesses.find(params[:id])
    render json: fitness_history, status: :ok
  end

  def create
    user = find_user
    fitness = user.fitnesses.create!(fitness_params)
    if fitness.valid?
      render json: fitness, status: :created
    else
      render json: {error: "Fitness not saved!"}, status: :unprocessable_entity
    end
  end

  private
  def fitness_params
    params.permit(:user_id, :weight, :height, :waist_size)
  end

  def render_fitness_not_found
    render json: {error: "User has no fitness history"}, status: :not_found
  end

  def find_user
    User.find(params[:user_id])
  end

end
