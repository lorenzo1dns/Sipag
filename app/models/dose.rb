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
#  product_id       :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class Dose < ActiveRecord::Base
	attr_accessible  :cultivo, :problema, :metodoAplicacion, :dosis, :observacion	
	belongs_to :product
end
