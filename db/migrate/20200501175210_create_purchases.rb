class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.references :store, index: true
      t.references :product, index: true
      t.references :seller, index: true
      t.references :buyer, index: true

      t.timestamps
    end
  end
end
