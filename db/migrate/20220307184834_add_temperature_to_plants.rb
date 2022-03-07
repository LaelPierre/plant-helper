class AddTemperatureToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :temperature, :string
  end
end
