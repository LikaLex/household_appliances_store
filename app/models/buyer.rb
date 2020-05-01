class Buyer < ApplicationRecord
  has_many :purchases

  validates :first_name, :last_name, :passport_number, :passport_seria, :phone, presence: true

  def name
    "#{first_name} #{last_name}"
  end
end
