class Task < ApplicationRecord
  has_many :dries
  has_many :adjs

  validates :req_user_name, presence: true
  validates :req_valiety, presence: true

end
