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

require 'spec_helper'

describe Inventary do
  pending "add some examples to (or delete) #{__FILE__}"
end
