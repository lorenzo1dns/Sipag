# == Schema Information
#
# Table name: coins
#
#  id         :integer          not null, primary key
#  moneda     :string(255)
#  pais       :string(255)
#  simbolo    :string(255)
#  valorLocal :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Coin do
  pending "add some examples to (or delete) #{__FILE__}"
end
