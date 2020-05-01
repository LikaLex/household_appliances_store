class Store < ApplicationRecord

  validates :name, :town, presence: true
end
