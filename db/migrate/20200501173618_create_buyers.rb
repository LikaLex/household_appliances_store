class CreateBuyers < ActiveRecord::Migration[6.0]
  def change
    create_table :buyers do |t|
      t.string :first_name
      t.string :last_name
      t.string :passport_seria
      t.integer :passport_number
      t.string :phone

      t.timestamps
    end
  end
end
