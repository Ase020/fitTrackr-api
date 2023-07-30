class ExerciseSerializer < ActiveModel::Serializer
  has_many :equipments
  has_many :body_parts

  attributes :id, :name, :description, :image, :intensity_type
end
