class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :temperature, :integer
    add_column :users, :sun_exposure, :string
    add_column :users, :prefered_day, :string
    add_column :users, :onboarded, :boolean, default: false
  end
end
