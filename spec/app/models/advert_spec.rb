require 'spec_helper'

describe Advert do

  describe 'model' do

  subject {@advert = Advert.new }

    it {should respond_to( :id)}
    it {should respond_to( :title)}
    it {should respond_to( :text)}

  end

end
