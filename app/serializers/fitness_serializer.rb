class FitnessSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :weight, :height, :waist_size
end
