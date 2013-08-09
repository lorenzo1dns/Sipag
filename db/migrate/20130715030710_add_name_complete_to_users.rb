class AddNameCompleteToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name_complete, :string

  end
end
