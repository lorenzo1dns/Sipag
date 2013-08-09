class CreateMakers < ActiveRecord::Migration
  def change
    create_table :makers do |t|
      t.string :nombre
      t.text :descripcion
      t.string :pais

      t.timestamps
    end
  end
end
