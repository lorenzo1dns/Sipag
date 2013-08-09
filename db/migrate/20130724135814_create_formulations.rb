class CreateFormulations < ActiveRecord::Migration
  def change
    create_table :formulations do |t|
      t.integer :element_id
      t.integer :product_id
      t.string :porcentaje

      t.timestamps
    end
  end
end
