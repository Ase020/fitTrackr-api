class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :intensity_type
end
