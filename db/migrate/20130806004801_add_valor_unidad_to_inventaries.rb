class AddValorUnidadToInventaries < ActiveRecord::Migration
  def change
    add_column :inventaries, :valorUnidad, :string

  end
end
