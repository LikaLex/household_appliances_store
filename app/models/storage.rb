class Storage < ApplicationRecord
  belongs_to :store
  has_many :commodity_units

  validates :name, :number, presence: true
end
