class CreateInventaries < ActiveRecord::Migration
  def change
    create_table :inventaries do |t|
      t.integer :product_id
      t.string :unidad
      t.float :cantidad

      t.timestamps
    end
  end
end
