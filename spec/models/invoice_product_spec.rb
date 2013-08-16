# == Schema Information
#
# Table name: invoice_products
#
#  id            :integer          not null, primary key
#  invoice_id    :integer
#  product_id    :integer
#  cantidad      :float
#  precio        :float
#  coin_id       :integer
#  total         :float
#  totalLempiras :float
#  created_at    :datetime
#  updated_at    :datetime
#  unidad        :string(255)
#  valorUnidad   :string(255)
#

require 'spec_helper'

describe InvoiceProduct do
  pending "add some examples to (or delete) #{__FILE__}"
end
