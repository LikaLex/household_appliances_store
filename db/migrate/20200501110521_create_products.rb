class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :kind
      t.date :date_of_issue
      t.decimal :price
      t.string :number
      t.references :manufacturer, index: true
      t.integer :guarantee_period
      t.string :specific_characteristic
      t.decimal :specific_characteristic_value

      t.timestamps
    end
  end
end
