module ApplicationHelper

	#RETURNS THE FULL TITLE ON A PER-PAGE basis
	def full_title(page_title)
		base_title = "Assistant Cupid"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
