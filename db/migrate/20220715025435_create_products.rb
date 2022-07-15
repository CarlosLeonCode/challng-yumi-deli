class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.text :description
      t.decimal :price, precision: 8, scale: 3
      t.string :weight

      t.timestamps
    end
  end
end
