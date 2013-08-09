module ProductsHelper

	def productAgrup(tipoProduct)

		
		@productsAgrupado = Product.where('tipo_product_id  = ?', "#{tipoProduct}")
	end

	
end
