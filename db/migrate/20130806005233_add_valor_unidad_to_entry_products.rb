class AddValorUnidadToEntryProducts < ActiveRecord::Migration
  def change
    add_column :entry_products, :valorUnidad, :string

  end
end
