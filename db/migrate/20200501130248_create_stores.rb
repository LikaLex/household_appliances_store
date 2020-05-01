class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :town
      t.string :street
      t.string :house

      t.timestamps
    end
  end
end
