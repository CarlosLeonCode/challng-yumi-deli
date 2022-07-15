class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.bigint :order_number
      t.references :customer, null: false, foreign_key: true
      t.references :primary_shipping_address, null: false, foreign_key: true
      t.integer :payment_type, limit: 2
      t.decimal :total_order_value

      t.timestamps
    end
  end
end
