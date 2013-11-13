class AndresMailer


	def send_email_nextEvent
		events=Event.all(:startdate => Date.today - 25)
		events.each do |event| 
    			AndresApplication::App.deliver(:notification, :contact_info_email, event)
		end
  	end

end
