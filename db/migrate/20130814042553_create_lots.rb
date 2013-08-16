class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.string :name
      t.text :descripcion
      t.float :area
      t.string :unidadmedida
      t.integer :region_id

      t.timestamps
    end
  end
end
