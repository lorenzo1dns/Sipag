class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nombre
      t.text :descripcion
      t.string :presentacion
      t.integer :tipo_product_id
      t.string :ingredienteActivo
      t.text :compatibilidad
      t.string :modoAccion
      t.string :toxicidad
      t.string :antidoto
      t.integer :maker_id
      t.integer :distributor_id

      t.timestamps
    end
  end
end
