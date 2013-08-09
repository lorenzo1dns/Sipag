class CreateSicks < ActiveRecord::Migration
  def change
    create_table :sicks do |t|
      t.string :nombre
      t.text :descripcion
      t.string :familia
      t.text :danio

      t.timestamps
    end
  end
end
