class CreateUserTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :user_tasks do |t|
      t.integer :frequency
      t.references :user_plant, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
