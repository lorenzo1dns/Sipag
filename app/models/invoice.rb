# == Schema Information
#
# Table name: invoices
#
#  id               :integer          not null, primary key
#  entry_id         :integer
#  distributor_id   :integer
#  fecha            :date
#  fechaVencimiento :date
#  created_at       :datetime
#  updated_at       :datetime
#  total            :float
#  totalLempiras    :float
#

class Invoice < ActiveRecord::Base
	attr_accessible :entry_id, :distributor_id, :fecha, :fechaVencimiento, :total, :totalLempiras
	belongs_to :beneficiary
	belongs_to :entry
	#has_many :products, through: :invoice_products
	has_many :invoice_products 
end
