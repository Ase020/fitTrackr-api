class User < ApplicationRecord
  has_secure_password
  has_many :workouts

  # Validations
  validates :username, :email, :gender, :height, :weight, :dob, :profile_image, :password_digest, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP}
  validates :password_digest, presence: true, length: { minimum: 6 }
end
