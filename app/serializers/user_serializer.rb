class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :gender, :profile_image, :height, :weight, :dob, :is_admin
end
