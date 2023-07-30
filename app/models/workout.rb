class Workout < ApplicationRecord
 belongs_to :user
 belongs_to :exercise

#   Validations
 validates :name, :intensity_target, :time_target, :user_id, :exercise_id, presence: true
end
