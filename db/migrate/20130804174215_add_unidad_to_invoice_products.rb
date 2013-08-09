class AddUnidadToInvoiceProducts < ActiveRecord::Migration
  def change
    add_column :invoice_products, :unidad, :string

  end
end
