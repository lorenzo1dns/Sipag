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

class Coin < ActiveRecord::Base
end
