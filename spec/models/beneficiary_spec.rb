# == Schema Information
#
# Table name: beneficiaries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  direccion  :text
#  telefono   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Beneficiary do
  pending "add some examples to (or delete) #{__FILE__}"
end
