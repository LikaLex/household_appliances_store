class Buyer < ApplicationRecord

  validates :first_name, :last_name, :passport_number, :passport_seria, :phone, presence: true
end
