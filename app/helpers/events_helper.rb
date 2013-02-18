module EventsHelper
	def iframe_url(event)
		event.diner.urlmaps + "&output=embed"
	end
end
