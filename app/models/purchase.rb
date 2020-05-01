class Purchase < ApplicationRecord
  belongs_to :store
  belongs_to :product
  belongs_to :seller
  belongs_to :buyer


end
