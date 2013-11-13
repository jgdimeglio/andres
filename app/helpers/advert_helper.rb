AndresApplication::App.helpers do
	
	def current_adv()
		Advert.find_current() 
	end

	

end
