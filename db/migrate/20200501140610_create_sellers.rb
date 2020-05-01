class CreateSellers < ActiveRecord::Migration[6.0]
  def change
    create_table :sellers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :employment_contract_number
      t.references :store, index: true

      t.timestamps
    end
  end
end
