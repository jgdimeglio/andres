require 'spec_helper'

describe Event do

	describe 'model' do

		subject { @event = Event.new }

		it { should respond_to( :id) }
		it { should respond_to( :startdate) }

	end

	
end

