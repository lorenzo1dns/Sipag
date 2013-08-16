# == Schema Information
#
# Table name: sicks_products
#
#  id         :integer          not null, primary key
#  sick_id    :integer
#  product_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class SicksProduct < ActiveRecord::Base
	belongs_to :sick
	belongs_to :product
end
