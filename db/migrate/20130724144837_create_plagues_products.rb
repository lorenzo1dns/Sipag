class CreatePlaguesProducts < ActiveRecord::Migration
  def change
    create_table :plagues_products do |t|
      t.integer :plague_id
      t.integer :product_id

      t.timestamps
    end
  end
end
