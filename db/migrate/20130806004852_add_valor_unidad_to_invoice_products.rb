class AddValorUnidadToInvoiceProducts < ActiveRecord::Migration
  def change
    add_column :invoice_products, :valorUnidad, :string

  end
end
