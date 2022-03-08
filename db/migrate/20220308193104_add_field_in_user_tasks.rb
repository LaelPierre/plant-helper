class AddFieldInUserTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :user_tasks, :name, :string
    add_column :user_tasks, :start_date, :date
    add_column :user_tasks, :description, :string
  end
end
