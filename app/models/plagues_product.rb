# == Schema Information
#
# Table name: plagues_products
#
#  id         :integer          not null, primary key
#  plague_id  :integer
#  product_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class PlaguesProduct < ActiveRecord::Base
	belongs_to :plague
	belongs_to :product
end
