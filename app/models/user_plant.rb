class UserPlant < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  has_many :user_tasks, dependent: :destroy

  enum plant_age: {
    young: 0,
    advanced: 1,
    old: 2
  }

  enum plant_health: {
    bad: 0,
    acceptable: 1,
    good: 2
  }
end
