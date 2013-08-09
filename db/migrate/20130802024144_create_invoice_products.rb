class CreateInvoiceProducts < ActiveRecord::Migration
  def change
    create_table :invoice_products do |t|
      t.integer :invoice_id
      t.integer :product_id
      t.float :cantidad
      t.float :precio
      t.integer :coin_id
      t.float :total
      t.float :totalLempiras

      t.timestamps
    end
  end
end
