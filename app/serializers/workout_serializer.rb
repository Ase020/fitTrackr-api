class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :intensity_target, :time_target, :intensity_achieved, :time_taken, :additional_notes, :user_id, :exercise_id
end
