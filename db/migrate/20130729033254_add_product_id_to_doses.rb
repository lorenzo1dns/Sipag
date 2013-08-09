class AddProductIdToDoses < ActiveRecord::Migration
  def change
    add_column :doses, :product_id, :integer

  end
end
