# == Schema Information
#
# Table name: coins
#
#  id         :integer          not null, primary key
#  moneda     :string(255)
#  pais       :string(255)
#  simbolo    :string(255)
#  valorLocal :float
#  created_at :datetime
#  updated_at :datetime
#

class Coin < ActiveRecord::Base
end
