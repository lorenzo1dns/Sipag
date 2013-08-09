class AddTipoProductIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :tipo_product_id, :integer

  end
end
