class Store < ApplicationRecord
  has_many :sellers

  validates :name, :town, presence: true
end
