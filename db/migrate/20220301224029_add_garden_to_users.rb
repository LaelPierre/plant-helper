class AddGardenToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :garden_name, :string
  end
end
