class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.integer :intensity_target
      t.integer :time_target
      t.integer :intensity_achieved
      t.integer :time_taken
      t.string :additional_notes
      t.integer :user_id
      t.integer :exercise_id

      t.timestamps
    end
  end
end
