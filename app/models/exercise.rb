class Exercise < ApplicationRecord
  has_many :exercise_body_parts
  has_many :body_parts, through: :exercise_body_parts
  has_many :exercise_equipments
  has_many :equipments, through: :exercise_equipments
end
