class Product < ApplicationRecord
  belongs_to :manufacturer
  has_many :commodity_units
  has_many :purchases

  validates :name, :kind, :date_of_issue, :price, presence: true
end
