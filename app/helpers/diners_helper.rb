module DinersHelper
	def iframe_urls(diner)
		diner.urlmaps + "&output=embed"
	end	
end
