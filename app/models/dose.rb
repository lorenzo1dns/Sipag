# == Schema Information
#
# Table name: doses
#
#  id               :integer          not null, primary key
#  cultivo          :string(255)
#  problema         :string(255)
#  metodoAplicacion :string(255)
#  dosis            :string(255)
#  observacion      :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  product_id       :integer
#

class Dose < ActiveRecord::Base
	attr_accessible  :cultivo, :problema, :metodoAplicacion, :dosis, :observacion	
	belongs_to :product
end
