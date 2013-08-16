# == Schema Information
#
# Table name: formulations
#
#  id         :integer          not null, primary key
#  element_id :integer
#  product_id :integer
#  porcentaje :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Formulation < ActiveRecord::Base
	
	belongs_to :product
	belongs_to :element

end
