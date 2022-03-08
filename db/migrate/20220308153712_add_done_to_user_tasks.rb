class AddDoneToUserTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :user_tasks, :done, :boolean, default: false
  end
end
