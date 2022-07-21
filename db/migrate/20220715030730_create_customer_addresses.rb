class CreateCustomerAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_addresses do |t|
      t.references :customer, null: false, foreign_key: true
      t.string :street
      t.string :number
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country

      t.timestamps
    end
  end
end
