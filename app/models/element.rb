# == Schema Information
#
# Table name: elements
#
#  id          :integer          not null, primary key
#  nombre      :string(255)
#  descripcion :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Element < ActiveRecord::Base
	attr_accessible :nombre, :descripcion
	validates :nombre, presence: true
	has_many :formulations
	has_many :products, through: :formulations

	def self.search(search)  
	    if search  
	      where('nombre LIKE ?', "%#{search}%")  
	    else  
	      scoped  
	    end  
	end  
end
