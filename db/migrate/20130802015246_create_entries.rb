class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :beneficiary_id
      t.date :fecha
      t.string :tipoEntrada
      t.integer :salida

      t.timestamps
    end
  end
end
