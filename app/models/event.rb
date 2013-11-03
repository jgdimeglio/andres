class Event

  include DataMapper::Resource

  property :id, Serial
  property :startdate, Date
  belongs_to :user

  validates_presence_of :startdate

  def owner
	user
  end

  def owner=(a_user)
	self.user = a_user
  end

  def self.find_by_owner(user)
	Event.all(:user => user)
  end

  def self.stringFormat(date)
	date.mday.to_s()  + '-' + date.month.to_s() + '-'+date.year.to_s()
  end

  def fertilePeriod()
        #return [start , end ]
	[self.startdate+11,startdate+15]
  end

  def nextEvent()
	self.startdate+27
  end

end


