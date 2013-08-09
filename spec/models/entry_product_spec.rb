# == Schema Information
#
# Table name: entry_products
#
#  id          :integer          not null, primary key
#  entry_id    :integer
#  product_id  :integer
#  cantidad    :float
#  unidad      :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  valorUnidad :string(255)
#

require 'spec_helper'

describe EntryProduct do
  pending "add some examples to (or delete) #{__FILE__}"
end
