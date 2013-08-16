# == Schema Information
#
# Table name: lots
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  descripcion  :text
#  area         :float
#  unidadmedida :string(255)
#  region_id    :integer
#  created_at   :datetime
#  updated_at   :datetime
#

require 'spec_helper'

describe Lot do
  pending "add some examples to (or delete) #{__FILE__}"
end
