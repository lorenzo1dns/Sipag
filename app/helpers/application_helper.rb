module ApplicationHelper

	def full_title(page_title)
		titulo_base = "Sistema de control agricola"

		if (page_title.empty?)
			titulo_base
		else

			"#{titulo_base} | #{page_title}"
		end
	end

	 @@data_per_page = 3
  
  def sortable(column, title = nil)
    title ||= column.titleize
    column_css = nil
    direction = "asc"

    if column == sort_column
      direction_css = "headerSortUp"
      
      if sort_direction == "asc"
        direction_css = "headerSortDown"
        direction = "desc"
      end
      
      column_css = column == sort_column ? "header #{direction_css}" : nil      
    end

    link_to title, params.merge(:sort => column, :direction => direction, :page => nil), {:class => column_css}
  end

	
end
