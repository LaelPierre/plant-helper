class AddHumidityToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :humidity, :string
  end
end
