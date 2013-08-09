class ChangeNombreProduct < ActiveRecord::Migration
  def up
  	change_table :products do |t|
      t.rename :nombre, :name
    end
  end

  def down
  	change_table :products do |t|
       t.rename :nombre, :name
    end
  end
end
