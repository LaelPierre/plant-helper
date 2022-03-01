class UserPlant < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  has_many :user_tasks, dependent: :destroy
end
