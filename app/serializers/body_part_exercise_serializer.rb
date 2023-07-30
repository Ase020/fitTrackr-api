class BodyPartExerciseSerializer < ActiveModel::Serializer
  has_many :exercises

  attributes  :name, :image
end
