class Advert
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :text, String
 

  def self.find_current()
	out = Advert.new
	out.text = "compre compre" 
	return out
  end
  
end
