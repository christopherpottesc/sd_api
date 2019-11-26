class Customer < ApplicationRecord
  validates :name, presence: true
  validates :phone, presence: true
  validates :email, presence: true
	validates :cpf_cnpj, presence: true
end
