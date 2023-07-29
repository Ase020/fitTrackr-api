class Fitness < ApplicationRecord
  belongs_to :user

  validates :user_id, :weight, :height, :waist_size, presence: true
end
