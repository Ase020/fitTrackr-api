class EquipmentController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_equipment_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity


  def index
    equipments = Equipment.all
    render json: equipments, status: :ok
  end

  def show
    equipment = find_equipment
    render json: equipment, serializer: EquipmentExerciseSerializer, status: :ok
  end

  # def create
  #   equipment = Equipment.create!(equipment_params)
  #   render json: equipment, status: :created
  # end

  private
  def find_equipment
    Equipment.find(params[:id])
  end

  def equipment_params
    params.permit(:name, :image)
  end

  def render_equipment_not_found
    render json: {error: 'Equipment not found!'}, status: :not_found
  end

  def render_unprocessable_entity(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
end
