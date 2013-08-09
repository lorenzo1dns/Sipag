# == Schema Information
#
# Table name: tipo_products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  descripcion :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  color       :string(255)
#

class TipoProduct < ActiveRecord::Base
	has_many :products
end
