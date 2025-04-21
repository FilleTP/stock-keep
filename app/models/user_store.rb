class UserStore < ApplicationRecord
  belongs_to :user
  belongs_to :store

  validates :first_name, :last_name, presence: true
end
