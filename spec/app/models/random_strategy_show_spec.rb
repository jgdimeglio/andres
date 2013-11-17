require 'spec_helper'

describe RandomStrategyShow do

  	describe ' find advert' do

		before(:each) do
    			@advert1=Advert.new
			@advert1.title="one"
			@advert1.text="one"
			@advert1.save

			@advert2=Advert.new
			@advert2.title="two"
			@advert2.text="two"
			@advert2.save
		
  		end

		after(:each) do
    			Advert.all.destroy
 		end

		let(:random) { RandomStrategyShow.new }
	
		it 'should return the advert1' do
		   SecureRandom.stub(:random_number).with(2).and_return(0)
		   random.find_advert.should == @advert1
		end

		it 'should return the advert2' do
		   SecureRandom.stub(:random_number).with(2).and_return(1)
		   random.find_advert.should == @advert2
		end

		it 'should return the nil' do
		   Advert.all.destroy
		   random.find_advert.should == nil
		end
	end

end
