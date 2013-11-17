class Advert
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :text, String
  property :enabled,String , :default => 'Yes'
 
  @@advertStrategyShow = RandomStrategyShow.new

  validates_presence_of :title
  validates_presence_of :text
  validates_presence_of :enabled


  def self.find_current()
	@@advertStrategyShow.find_advert()
  end
 
  
  
end
