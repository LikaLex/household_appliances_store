class Seller < ApplicationRecord
  belongs_to :store
  has_many :purchases

  validates :first_name, :last_name, :employment_contract_number, presence: true

  def name
    "#{first_name} #{last_name}"
  end
end
