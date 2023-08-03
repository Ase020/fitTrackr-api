class User < ApplicationRecord
  attr_accessor :verification_token
  before_create :generate_verification_token
  has_secure_password
  has_many :workouts
  has_many :fitnesses

  # Validations
  # validates :username, :gender, :height, :weight, :dob, :profile_image, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP}
  validates :password_digest, presence: true, length: { minimum: 6 }


  private
  def generate_verification_token
    self.verification_token = SecureRandom.urlsafe_base64.to_s
  end
end
