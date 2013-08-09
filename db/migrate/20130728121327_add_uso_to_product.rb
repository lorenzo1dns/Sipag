class AddUsoToProduct < ActiveRecord::Migration
  def change
    add_column :products, :uso, :text

  end
end
