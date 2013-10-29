class Event

  include DataMapper::Resource

  property :id, Serial
  property :finicio, String
  belongs_to :user

  validates_presence_of :finicio

  def owner
	user
  end

  def owner=(a_user)
	self.user = a_user
  end

  def self.find_by_owner(user)
	Event.all(:user => user)
  end

end


