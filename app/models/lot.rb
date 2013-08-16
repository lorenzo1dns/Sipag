# == Schema Information
#
# Table name: lots
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  descripcion  :text
#  area         :float
#  unidadmedida :string(255)
#  region_id    :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Lot < ActiveRecord::Base
attr_accessible :name, :descripcion, :area, :unidadmedida, :region_id
belongs_to :region

def self.search(search)  
	    if search  
	      where('name LIKE ?', "%#{search}%")  
	    else  
	      scoped  
	    end  
	end  
end
