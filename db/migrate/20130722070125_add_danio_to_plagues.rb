class AddDanioToPlagues < ActiveRecord::Migration
  def change
    add_column :plagues, :danio, :text

  end
end
