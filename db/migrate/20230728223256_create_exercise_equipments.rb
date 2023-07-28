class CreateExerciseEquipments < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_equipments do |t|
      t.integer :exercise_id
      t.integer :equipment_id

      t.timestamps
    end
  end
end
