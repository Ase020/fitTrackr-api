class WorkoutSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :name, :intensity_target, :time_target, :intensity_achieved, :time_taken, :user_id, :exercise_id
end
