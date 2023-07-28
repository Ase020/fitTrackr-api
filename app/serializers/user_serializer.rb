class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :gender, :password_digest, :profile_image, :height, :weight, :dob, :is_admin
end
