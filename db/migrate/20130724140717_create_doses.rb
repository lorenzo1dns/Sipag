class CreateDoses < ActiveRecord::Migration
  def change
    create_table :doses do |t|
      t.string :cultivo
      t.string :problema
      t.string :metodoAplicacion
      t.string :dosis
      t.text :observacion

      t.timestamps
    end
  end
end
