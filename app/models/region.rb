# == Schema Information
#
# Table name: regions
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  descripcion :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Region < ActiveRecord::Base
	attr_accessible :name, :descripcion
	validates :name, presence: true
	has_many :lot

	def self.search(search)  
	    if search  
	      where('name LIKE ?', "%#{search}%")  
	    else  
	      scoped  
	    end  
	end  
end
