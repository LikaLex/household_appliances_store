class Product < ApplicationRecord
  belongs_to :manufacturer

  validates :name, :kind, :date_of_issue, :price, presence: true
end
