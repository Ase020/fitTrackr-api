class CreateFitnesses < ActiveRecord::Migration[7.0]
  def change
    create_table :fitnesses do |t|
      t.integer :user_id
      t.integer :weight
      t.integer :height
      t.integer :waist_size

      t.timestamps
    end
  end
end
