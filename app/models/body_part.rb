class BodyPart < ApplicationRecord
  has_many :exercise_body_parts
  has_many :exercises, through: :exercise_body_parts

  validates :name, :image, presence: true
end
