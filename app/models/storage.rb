class Storage < ApplicationRecord
  belongs_to :store

  validates :name, :number, presence: true
end
