# == Schema Information
#
# Table name: distributors
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  direccion  :string(255)
#  telefono   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Distributor do
  pending "add some examples to (or delete) #{__FILE__}"
end
