class RemoveTipoProductoFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :tipoProducto
      end

  def down
    add_column :products, :tipoProducto, :string
  end
end
