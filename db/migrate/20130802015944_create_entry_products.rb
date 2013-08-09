class CreateEntryProducts < ActiveRecord::Migration
  def change
    create_table :entry_products do |t|
      t.integer :entry_id
      t.integer :product_id
      t.float :cantidad
      t.string :unidad

      t.timestamps
    end
  end
end
