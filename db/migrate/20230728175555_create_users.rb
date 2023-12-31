class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :gender
      t.string :password_digest
      t.string :profile_image
      t.integer :height
      t.integer :weight
      t.date :dob
      t.boolean :is_admin

      t.timestamps
    end
  end
end
