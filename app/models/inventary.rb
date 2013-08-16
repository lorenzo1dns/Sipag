# == Schema Information
#
# Table name: inventaries
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  unidad      :string(255)
#  cantidad    :float
#  created_at  :datetime
#  updated_at  :datetime
#  valorUnidad :string(255)
#

class Inventary < ActiveRecord::Base
end
