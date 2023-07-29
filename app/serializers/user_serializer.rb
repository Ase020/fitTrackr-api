class UserSerializer < ActiveModel::Serializer
  has_many :fitnesses

  attributes :id, :username, :email, :gender, :profile_image, :height, :weight, :dob, :is_admin
end
