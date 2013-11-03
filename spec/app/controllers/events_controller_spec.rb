require 'spec_helper'

describe 'EventsController' do

	describe 'get :new' do
		
	  it 'should response ok and render job_offers/new' do
	  	AndresApplication::App.any_instance.should_receive(:render).with('events/new')
	  	get '/events/new'
	    last_response.should be_ok
	  end

	 end

end
