class UserTask < ApplicationRecord
  belongs_to :user_plant
  belongs_to :task
end
