# == Schema Information
#
# Table name: entries
#
#  id             :integer          not null, primary key
#  beneficiary_id :integer
#  fecha          :date
#  tipoEntrada    :string(255)
#  salida         :integer
#  created_at     :datetime
#  updated_at     :datetime
#

require 'spec_helper'

describe Entry do
  pending "add some examples to (or delete) #{__FILE__}"
end
