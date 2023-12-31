class Exercise < ApplicationRecord
  # mount_uploader :image, ImageUploader

  has_many :exercise_body_parts
  has_many :body_parts, through: :exercise_body_parts
  has_many :exercise_equipments
  has_many :equipments, through: :exercise_equipments
  has_many :workouts

#   validations
  validates :name, :description, :image, :intensity_type, presence: true
end
