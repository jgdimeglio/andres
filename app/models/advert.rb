class Advert
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :text, String
  property :enabled,String , :default => 'Yes'
 
  validates_presence_of :title
  validates_presence_of :text
  validates_presence_of :enabled

  def self.find_current()
	out = Advert.new
	out.text = "compre compre" 
	return out
  end
 
  
  
end
