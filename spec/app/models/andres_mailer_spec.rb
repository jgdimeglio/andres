require 'spec_helper'

describe AndresMailer do


  describe 'send mail of next event' do

	  let(:andres_mailer) { AndresMailer.new }

	  it 'should send the notification of the next event to a contact' do
		#create a sample event
		user=User.new
		user.name="name"
		user.email="name@test.com"
		user.password="Name1234"
		user.save

		event=Event.new
  		event.owner=user
  		event.startdate= Date.today - 25
  		event.save
		
	  	AndresApplication::App.should_receive(:deliver).with(:notification, :contact_info_email, event)
	  	andres_mailer.send_email_nextEvent
	  end

	  it 'should send the notification of the next event to two contact' do
		#create a sample event
		user=User.new
		user.name="name1"
		user.email="name1@test.com"
		user.password="Name1234"
		user.save

		event=Event.new
  		event.owner=user
  		event.startdate= Date.today - 25
  		event.save

		
	  	AndresApplication::App.should_receive(:deliver).with(:notification, :contact_info_email, Event.find_by_id(1))
		AndresApplication::App.should_receive(:deliver).with(:notification, :contact_info_email, event)
	  	andres_mailer.send_email_nextEvent
	  end

	end

end
