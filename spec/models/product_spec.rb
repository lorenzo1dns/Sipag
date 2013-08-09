# == Schema Information
#
# Table name: products
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  descripcion       :text
#  presentacion      :string(255)
#  ingredienteActivo :string(255)
#  compatibilidad    :text
#  modoAccion        :string(255)
#  toxicidad         :string(255)
#  antidoto          :string(255)
#  maker_id          :integer
#  distributor_id    :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  uso               :text
#  tipo_product_id   :integer
#

require 'spec_helper'

describe Product do
  pending "add some examples to (or delete) #{__FILE__}"
end
