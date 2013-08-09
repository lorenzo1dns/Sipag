class CreateDistributors < ActiveRecord::Migration
  def change
    create_table :distributors do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
