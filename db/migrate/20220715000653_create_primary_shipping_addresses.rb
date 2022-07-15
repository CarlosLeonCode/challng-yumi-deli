class CreatePrimaryShippingAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :primary_shipping_addresses do |t|
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
