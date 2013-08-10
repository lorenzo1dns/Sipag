class ComprobanteEntrada < Prawn::Document
	def to_pdf(entradaId)
		@entry = Entry.find(entradaId)
		lineheight_y = 12
		
		font "Helvetica"
		text_box "INVERSIONES MARADIAGA", :size => 15, :style => :bold, :at => [160, 743]		
		text_box "CHOLUTECA", :size => 8, :style => :bold, :at => [240, 728]	
		
		text_box "OJO DE AGUA, EL TRIUNFO, PBX:(504)27825873 E-mail: ramcelk@gmail.com", :size => 8, :at => [125, cursor]
		move_down lineheight_y + 3
		text_box "COMPROBANTE DE ENTRADA No.", :size => 10, :style => :bold, :at => [163, cursor]
		fill_color "FC0623" 
		text_box entradaId.to_s, :size =>10	,:at => [338, cursor]
		fill_color "000000" 

		 fechas = [ ["DIA","MES", "ANIO"],
		 	[ @entry.fecha.day.to_s, @entry.fecha.month.to_s, @entry.fecha.year.to_s  ]]

		 	bounding_box([413,732], :width => 120) do
				table(fechas, :width => 120) do
					style(row(1..-1).columns(0..-1), :padding => [4, 5, 4, 5], :borders => [:bottom], :border_color => 'dddddd')
					style(row(0),:size=> 9, :background_color => 'e9e9e9', :border_color => 'dddddd', :font_style => :bold, :height => 18)
				end
			end

		benef = [["NOMBRE:",  @entry.beneficiary.name, "TIPO DE ENTRADA:", @entry.tipoEntrada]
				]

		table(benef, :width => 533) do
					style(row(0).columns(0..-1),:size => 10,  :borders => [:top,:bottom], :border_color => 'dddddd')
					
					style(row(0).columns(0), :width => 60 ,:borders => [:left, :top, :bottom] )
					
					style(row(0).columns(2), :width => 100 )
					style(row(0).columns(3), :width => 60 ,:borders => [:right, :top, :bottom] )
					
		end

		items = [["CODIGO","PRODUCTO", "UNIDAD", "CANT.", "OBSERVACION"]]
		items += @entry.entry_products.map do |prod|
			[
				prod.product_id,
				prod.product.name,
				prod.valorUnidad + " " + prod.unidad,
				prod.cantidad,
				" "
				
			]
		 
		end
		table(items, :width => 533, :column_widths => {0=>47, 1 => 175, 2 => 50, 3 => 50}) do

			style(row(0),:size=> 9, :background_color => 'e9e9e9', :border_width => 0.2,:border_color => '645E5F', :font_style => :bold, :height => 18)
			style(row(1..-1).columns(0..-1), :padding => [4, 5, 4, 5], :border_width => 0.2, :border_color => '645E5F')
			style(row(1..-1).columns(3), :align => :right)
		end
		 firmas = [ ["Encargado de Bodega:","Firma quien entrega:"]]

		bounding_box([0,588], :width => 533) do

				table(firmas, :width => 533) do
					
					style(row(0),:size=> 9, :border_color => 'dddddd', :height => 18)
				end
		end
		render
	end
end