class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :entry_id
      t.integer :distributor_id
      t.date :fecha
      t.date :fechaVencimiento

      t.timestamps
    end
  end
end
