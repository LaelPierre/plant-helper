class Task < ApplicationRecord
  has_one_attached :photo
  has_many :user_tasks

  validates :name, :description, presence: true
  validates :name, uniqueness: true
end
