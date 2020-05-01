class Store < ApplicationRecord
  has_many :sellers
  has_many :storages

  validates :name, :town, presence: true
end
