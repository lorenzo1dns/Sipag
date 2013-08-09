# == Schema Information
#
# Table name: plagues_products
#
#  id         :integer          not null, primary key
#  plague_id  :integer
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PlaguesProduct < ActiveRecord::Base
	belongs_to :plague
	belongs_to :product
end
