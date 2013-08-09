# == Schema Information
#
# Table name: formulations
#
#  id         :integer          not null, primary key
#  element_id :integer
#  product_id :integer
#  porcentaje :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Formulation do
  pending "add some examples to (or delete) #{__FILE__}"
end
