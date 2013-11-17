require 'securerandom'

class RandomStrategyShow
  
  def find_advert()
	adverts=Advert.all(:enabled => 'Yes')
	if adverts.size > 0 then
		adverts[SecureRandom.random_number(adverts.size)] 
	end 
  end
 
end



