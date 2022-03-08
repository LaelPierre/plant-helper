class RemoveShowFromUserTasks < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_tasks, :show, :boolean, default: true
  end
end
