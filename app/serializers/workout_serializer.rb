class WorkoutSerializer < ActiveModel::Serializer
  # belongs_to :user
  belongs_to :exercise
  attributes :id, :name, :intensity_target, :time_target, :intensity_achieved, :time_taken, :user_id, :exercise_id, :created_at
end
