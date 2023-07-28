class CreateExerciseBodyParts < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_body_parts do |t|
      t.integer :exercise_id
      t.integer :body_part_id

      t.timestamps
    end
  end
end
