class CreateStorages < ActiveRecord::Migration[6.0]
  def change
    create_table :storages do |t|
      t.string :number
      t.string :name
      t.references :store, index: true

      t.timestamps
    end
  end
end
