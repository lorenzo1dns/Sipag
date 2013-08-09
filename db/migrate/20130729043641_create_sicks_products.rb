class CreateSicksProducts < ActiveRecord::Migration
  def change
    create_table :sicks_products do |t|
      t.integer :sick_id
      t.integer :product_id

      t.timestamps
    end
  end
end
