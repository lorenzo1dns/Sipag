# == Schema Information
#
# Table name: sicks
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  descripcion         :text
#  familia             :string(255)
#  danio               :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

class Sick < ActiveRecord::Base
attr_accessible :name, :descripcion, :danio, :familia, :avatar
validates :name, presence: true

has_many :sicks_products
has_many :products, through: :sicks_products

has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "30x30>" }, :default_url => "/images/:style/missing.png"
	def self.search(search)  
	    if search  
	      where('name LIKE ?', "%#{search}%")  
	    else  
	      scoped  
	    end  
	end  
end
