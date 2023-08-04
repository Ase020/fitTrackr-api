class ExerciseBodyPartsController < ApplicationController
  def index
    exercise_body_parts = ExerciseBodyPart.all
    render json: exercise_body_parts, status: :ok
  end
end
