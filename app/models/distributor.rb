# == Schema Information
#
# Table name: distributors
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  direccion  :string(255)
#  telefono   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Distributor < ActiveRecord::Base

	attr_accessible :nombre, :direccion, :telefono
	validates :nombre, presence: true
	has_many :products
	
	def self.search(search)  
	    if search  
	      where('nombre LIKE ?', "%#{search}%")  
	    else  
	      scoped  
	    end  
	end  
end
