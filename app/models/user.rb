class User
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :crypted_password, String
  property :email, String
  property :admin, Boolean , :default => false
  has n, :events

  validates_presence_of :name
  validates_presence_of :crypted_password
  validates_presence_of :email
  validates_format_of   :email,    :with => :email_address
  validates_with_method :is_secure_password?

  def is_secure_password?
    true
  end

  def password= (password)
    if password[/[[:lower:]]/] and password[/[[:upper:]]/] and
       password[/\d/] and (password.length >= 8)
      self.crypted_password = ::BCrypt::Password.create(password)
    end
  end

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    return nil if user.nil?
    user.has_password?(password)? user : nil
  end

  def has_password?(password)
    ::BCrypt::Password.new(crypted_password) == password
  end

end
