class CreatePlagues < ActiveRecord::Migration
  def change
    create_table :plagues do |t|
      t.string :nombre
      t.string :descripcion
      t.string :tipoPlaga

      t.timestamps
    end
  end
end
