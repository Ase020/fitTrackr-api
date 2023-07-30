class BodyPartExerciseSerializer < ActiveModel::Serializer
  has_many :exercises

  attributes :id, :name, :image
end
