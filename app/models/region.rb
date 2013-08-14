# == Schema Information
#
# Table name: regions
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  descripcion :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Region < ActiveRecord::Base
	attr_accessible :name, :descripcion
	validates :name, presence: true

	def self.search(search)  
	    if search  
	      where('name LIKE ?', "%#{search}%")  
	    else  
	      scoped  
	    end  
	end  
end
