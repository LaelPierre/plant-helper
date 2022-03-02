class Plant < ApplicationRecord
  has_many_attached :photos
  has_many :user_plants

  validates :species, :name, :description, presence: true
end
