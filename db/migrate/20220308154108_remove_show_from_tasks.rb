class RemoveShowFromTasks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :show, :boolean, default: false
  end
end
