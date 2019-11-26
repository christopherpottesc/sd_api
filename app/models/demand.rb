class Demand < ApplicationRecord
  validates :description, presence: true
  validates :observation, presence: true
  validates :value, presence: true
  validates :date_start, presence: true
  validates :date_end, presence: true
end
