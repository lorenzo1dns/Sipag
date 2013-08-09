class AddTotalToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :total, :float

    add_column :invoices, :totalLempiras, :float

  end
end
