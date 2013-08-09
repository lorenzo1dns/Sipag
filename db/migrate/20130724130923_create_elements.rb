class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
