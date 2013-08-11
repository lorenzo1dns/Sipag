class CreateTipoProducts < ActiveRecord::Migration
  def change
    create_table :tipo_products do |t|
      t.string :name
      t.string :descripcion

      t.timestamps
    end
  end
end
