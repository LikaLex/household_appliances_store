class Seller < ApplicationRecord
  belongs_to :store

  validates :first_name, :last_name, :employment_contract_number, presence: true
end
