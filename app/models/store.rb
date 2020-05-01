class Store < ApplicationRecord
  has_many :sellers
  has_many :storages
  has_many :purchases

  validates :name, :town, presence: true
end
