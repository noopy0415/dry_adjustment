class Dry < ApplicationRecord
  belongs_to :task
  belongs_to :drier

  validates :drier_id, presence: true
  validates :init_moist, presence: true

end
