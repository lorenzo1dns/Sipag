class CreateCoins < ActiveRecord::Migration
  def change
    create_table :coins do |t|
      t.string :moneda
      t.string :pais
      t.string :simbolo
      t.float :valorLocal

      t.timestamps
    end
  end
end
