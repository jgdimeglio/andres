When(/^notifications are sent$/) do
  AndresMailer.send_email_nextEvent
end


And(/^the user registered "(.*?)"$/) do |email|
  user=User.new
  user.name="name"
  user.email=email
  user.password="Name1234"
  user.save
end

Given(/^"(.*?)" user has an event to be reported today$/) do |email|
  event=Event.new
  event.owner=User.find_by_email(email)
  event.startdate= Date.today - 25
  event.save
end

Then(/^"(.*?)" user should receive an email$/) do |email|
  mail_store = "#{Padrino.root}/tmp/emails"
  file = File.open("#{mail_store}/"+email, "r")
  content = file.read
  event=Event.first(:startdate => (Date.today - 25),:user => User.find_by_email(email)) 
  content.include?(Event.stringFormat(event.startdate)).should be true
  content.include?(Event.stringFormat(event.nextEvent)).should be true
  
end

Then(/^"(.*?)" user should not receive an email$/) do |email|
  begin
  	mail_store = "#{Padrino.root}/tmp/emails"
  	file = File.open("#{mail_store}/"+email, "r")
	raise 'The '+ email +'file should not be created'
  rescue Exception

  end
  
end


