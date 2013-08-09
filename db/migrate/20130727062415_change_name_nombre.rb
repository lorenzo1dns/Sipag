class ChangeNameNombre < ActiveRecord::Migration
   def up
  	change_table :plagues do |t|
      t.rename :nombre, :name
    end
  end

  def down
  	change_table :plagues do |t|
       t.rename :nombre, :name
    end
  end
end
