# == Schema Information
#
# Table name: products
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  descripcion       :text
#  presentacion      :string(255)
#  tipo_product_id   :integer
#  ingredienteActivo :string(255)
#  compatibilidad    :text
#  modoAccion        :string(255)
#  toxicidad         :string(255)
#  antidoto          :string(255)
#  maker_id          :integer
#  distributor_id    :integer
#  created_at        :datetime
#  updated_at        :datetime
#  uso               :text
#

class Product < ActiveRecord::Base
	attr_accessible :name, :plague_tokens, :plague_ids, :ingredienteActivo, :antidoto, :descripcion, 
					:presentacion, :tipo_product_id, :modoAccion, :compatibilidad, :toxicidad, :maker_id, :uso, 
					:sick_tokens, :distributor_id
	belongs_to :maker
	belongs_to :distributor
	belongs_to :tipo_product

	has_many :formulations
	has_many :plagues_products
	has_many :plagues, through: :plagues_products
	has_many :doses
	has_many :sicks_products
	has_many :sicks, through: :sicks_products
	has_many :entry_products
	has_many :entries, through: :entry_products
	has_many :invoices, through: :invoice_products
	has_many :invoice_products

	attr_reader :plague_tokens, :sick_tokens  
    
	  def plague_tokens=(ids)  
	    self.plague_ids = ids.split(",")  
	  end  

	  def sick_tokens=(ids)  
	    self.sick_ids = ids.split(",")  
	  end  

	  def self.search(search)  
	    if search  
	      where('name LIKE ?', "%#{search}%")  
	    else  
	      scoped  
	  	end
	  end
end
