class Employee < ApplicationRecord
    validates :name, presence: true
    validates :phone, presence: true
    validates :email, presence: true
    validates :function, presence: true
end
