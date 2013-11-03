require 'spec_helper'

describe Event do

	describe 'model' do

		subject { @event = Event.new }

		it { should respond_to( :id) }
		it { should respond_to( :startdate) }
                it { should respond_to( :fertilePeriod) }
		it { should respond_to( :owner) }
	end

        describe ' owner' do
		let(:event) { Event.new }
		it 'should have owner' do
		   user=User.new()
	           event.owner=user
		   event.owner.should == user
		end
	end

        describe ' String format' do

		it 'should return a string 6-5-2013' do
	           Event.stringFormat(Date.new(2013,5,6)).should eq '6-5-2013' 
		end
	end

        describe ' Next event' do
		let(:event) { Event.new }

		it 'should return a date 2013/5/28' do
	           event.startdate=Date.new(2013,5,1)
		   from,to=event.nextEvent
		   from.should == Date.new(2013,5,28) 
		end

                it 'should return a date 17-1-2014 when change of year' do
	           event.startdate=Date.new(2013,12,21)
		   from,to=event.nextEvent
		   from.should == Date.new(2014,1,17) 
		end
	end

         describe ' Fertile period of event' do
                
                let(:event) { Event.new }
	
		it 'should return the date 2013-5-17 and 2013-5-21' do
                   event.startdate=Date.new(2013,5,6)
		   from,to=event.fertilePeriod()
		   from.should == Date.new(2013,5,17)
                   to.should ==  Date.new(2013,5,21)
		end

                it 'should return the date 2014-1-5 and 2014-1-9 when change of year' do

                   event.startdate=Date.new(2013,12,25)
		   from,to=event.fertilePeriod()
		   from.should == Date.new(2014,1,5)
                   to.should ==  Date.new(2014,1,9)
		end

		it 'should return the date 2013-6-17 and 2013-6-21 when change of month' do
                   event.startdate=Date.new(2013,5,25)
		   from,to=event.fertilePeriod()
		   from.should == Date.new(2013,6,5)
                   to.should ==  Date.new(2013,6,9)
		end
	end

	
end

