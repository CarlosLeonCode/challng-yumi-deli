class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :phone, null: false
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
