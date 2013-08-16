# == Schema Information
#
# Table name: beneficiaries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  direccion  :text
#  telefono   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Beneficiary < ActiveRecord::Base
	has_many :entries
end
