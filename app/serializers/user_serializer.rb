class UserSerializer < ActiveModel::Serializer
  has_many :fitnesses
  has_many :workouts

  attributes :id, :username, :email, :gender, :profile_image, :height, :weight, :dob, :is_admin, :created_at
end
