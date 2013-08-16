# == Schema Information
#
# Table name: doses
#
#  id               :integer          not null, primary key
#  cultivo          :string(255)
#  problema         :string(255)
#  metodoAplicacion :string(255)
#  dosis            :string(255)
#  observacion      :text
#  product_id       :integer
#  created_at       :datetime
#  updated_at       :datetime
#

require 'spec_helper'

describe Dose do
  pending "add some examples to (or delete) #{__FILE__}"
end
