class CreateCommodityUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :commodity_units do |t|
      t.integer :count
      t.references :storage, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
