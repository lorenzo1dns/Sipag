# == Schema Information
#
# Table name: makers
#
#  id          :integer          not null, primary key
#  nombre      :string(255)
#  descripcion :text
#  pais        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Maker < ActiveRecord::Base
	attr_accessible :nombre, :descripcion, :pais
	validates :nombre, presence: true

	has_many :product

	def self.search(search)  
	    if search  
	      where('nombre LIKE ?', "%#{search}%")  
	    else  
	      scoped  
	    end  
	end  
end
