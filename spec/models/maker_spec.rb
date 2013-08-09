# == Schema Information
#
# Table name: makers
#
#  id          :integer          not null, primary key
#  nombre      :string(255)
#  descripcion :text
#  pais        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Maker do
  pending "add some examples to (or delete) #{__FILE__}"
end
