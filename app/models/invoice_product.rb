# == Schema Information
#
# Table name: invoice_products
#
#  id            :integer          not null, primary key
#  invoice_id    :integer
#  product_id    :integer
#  cantidad      :float
#  precio        :float
#  coin_id       :integer
#  total         :float
#  totalLempiras :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  unidad        :string(255)
#  valorUnidad   :string(255)
#

class InvoiceProduct < ActiveRecord::Base
	attr_accessible :invoice_id, :product_id, :cantidad, :precio, :coin_id, :total, :unidad, :valorUnidad, :totalLempiras
	belongs_to :product
	belongs_to :invoice

	
end
