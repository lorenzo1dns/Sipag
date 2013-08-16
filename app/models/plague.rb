# == Schema Information
#
# Table name: plagues
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  descripcion         :text(255)
#  tipoPlaga           :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  danio               :text
#

class Plague < ActiveRecord::Base
	attr_accessible :name, :descripcion, :danio, :tipoPlaga, :avatar
	has_many :plagues_products
	has_many :products, through: :plagues_products
  	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "30x30>" }, :default_url => "/images/:style/missing.png"
	
	validates :name, presence: true
	validates :tipoPlaga, presence: true

	def self.search(search)  
    if search  
      where('name LIKE ?', "%#{search}%")  
    else  
      scoped  
    end  
  end  
	
	
end
