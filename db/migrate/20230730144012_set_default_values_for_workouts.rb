class SetDefaultValuesForWorkouts < ActiveRecord::Migration[7.0]
  def change
    change_column_default :workouts, :intensity_target, 0
    change_column_default :workouts, :time_target, 0
    change_column_default :workouts, :intensity_achieved, 0
    change_column_default :workouts, :time_taken, 0
  end
end
