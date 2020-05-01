class CommodityUnit < ApplicationRecord
  belongs_to :product
  belongs_to :storage

  validates :count, presence: true
end
