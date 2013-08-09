class ChangeTypeDescripcion < ActiveRecord::Migration
  def up
  	change_table :plagues do |t|
      t.change :descripcion, :text
    end
  end

  def down
  	change_table :plagues do |t|
      t.change :descripcion, :string
    end
  end
end
