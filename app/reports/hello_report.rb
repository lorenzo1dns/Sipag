class HelloReport < Prawn::Document
	def to_pdf(coins)
		
		text "veremos ", :size =>30, :style => :bold

		items = coins.map do |coin|
			[
				coin.moneda,
				coin.pais,
				coin.simbolo,
				coin.valorLocal 
			]
		 
		end

		table items

		render
	end
end