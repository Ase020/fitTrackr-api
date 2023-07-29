class FitnessesController < ApplicationController
  rescue_from ActiveRecord:: RecordNotFound, with: :render_fitness_not_found
  def index
    fitnesses = Fitness.all
    render json: fitnesses, status: :ok
  end

  def show
    fitness_history = Fitness.where(user_id: params[:user_id])
    render json: fitness_history, status: :ok
  end

  def create
    fitness = Fitness.create!(fitness_params)
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

end
