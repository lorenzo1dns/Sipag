class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name
      t.text :descripcion

      t.timestamps
    end
  end
end
