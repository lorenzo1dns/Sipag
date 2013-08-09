class AddColorToTipoProduct < ActiveRecord::Migration
  def change
    add_column :tipo_products, :color, :string

  end
end
