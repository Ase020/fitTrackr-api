class ExerciseBodyPart < ApplicationRecord
  belongs_to :exercise
  belongs_to :body_part
end
