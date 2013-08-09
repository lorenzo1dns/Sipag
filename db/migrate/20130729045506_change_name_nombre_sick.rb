class ChangeNameNombreSick < ActiveRecord::Migration
   def up
  	change_table :sicks do |t|
      t.rename :nombre, :name
    end
  end

  def down
  	change_table :sicks do |t|
       t.rename :nombre, :name
    end
  end
end
