# == Schema Information
#
# Table name: entries
#
#  id             :integer          not null, primary key
#  beneficiary_id :integer
#  fecha          :date
#  tipoEntrada    :string(255)
#  salida         :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Entry < ActiveRecord::Base
	attr_accessible :beneficiary_id, :fecha, :tipoEntrada, :salida
	validates :beneficiary_id, presence:true
	belongs_to :beneficiary
	has_many :invoices
	has_many :products, through: :entry_products
	has_many :entry_products
end
