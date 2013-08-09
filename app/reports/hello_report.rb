class HelloReport < Prawn::Document
	def to_pdf
		text "Hola Rogers"
		render
	end
end