class Call < ApplicationRecord
  validates :activity, presence: true
  validates :name, presence: true
  validates :phone, presence: true
  validates :value, presence: true
  validates :value_displacement, presence: true
  validates :cep, presence: true
  validates :street, presence: true
  validates :neighborhood, presence: true
  validates :city, presence: true
  validates :number, presence: true
  validates :start_date, presence: true
end
