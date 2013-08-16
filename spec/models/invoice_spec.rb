# == Schema Information
#
# Table name: invoices
#
#  id               :integer          not null, primary key
#  entry_id         :integer
#  distributor_id   :integer
#  fecha            :date
#  fechaVencimiento :date
#  created_at       :datetime
#  updated_at       :datetime
#  total            :float
#  totalLempiras    :float
#

require 'spec_helper'

describe Invoice do
  pending "add some examples to (or delete) #{__FILE__}"
end
