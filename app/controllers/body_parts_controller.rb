class BodyPartsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_body_part_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

  before_action :authorize
  def index
    body_parts = BodyPart.all
    render json: body_parts, status: :ok
  end

  def show
    body_part = find_body_part
    render json: body_part, serializer: BodyPartExerciseSerializer, status: :ok
  end

  # def create
  #   body_part = BodyPart.create!(body_part_params)
  #   render json: body_part, status: :created
  # end

  private
  def find_body_part
    BodyPart.find(params[:id])
  end

  def render_body_part_not_found
    render json: {error: "Body part not found!"}, status: :not_found
  end

  def body_part_params
    params.permit(:name, :image)
  end

  def render_unprocessable_entity(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end

end
