module ApplicationHelper

	#Takes title of client, and adds the title of the current page
	def full_title(page_title)
		base_title = Client.current.title
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end


end
