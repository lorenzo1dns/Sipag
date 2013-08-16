# == Schema Information
#
# Table name: entry_products
#
#  id          :integer          not null, primary key
#  entry_id    :integer
#  product_id  :integer
#  cantidad    :float
#  unidad      :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  valorUnidad :string(255)
#

class EntryProduct < ActiveRecord::Base
	attr_accessible :entry_id, :product_id, :cantidad,  :unidad, :valorUnidad
	belongs_to :product
	belongs_to :entry
end
