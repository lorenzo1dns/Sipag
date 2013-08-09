class CreateBeneficiaries < ActiveRecord::Migration
  def change
    create_table :beneficiaries do |t|
      t.string :name
      t.text :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
