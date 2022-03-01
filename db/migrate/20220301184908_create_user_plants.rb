class CreateUserPlants < ActiveRecord::Migration[6.1]
  def change
    create_table :user_plants do |t|
      t.string :nickname
      t.integer :plant_age
      t.integer :plant_health
      t.references :user, null: false, foreign_key: true
      t.references :plant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
