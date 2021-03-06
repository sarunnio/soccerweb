class User < ActiveRecord::Base
  
  attr_accessor :password
  attr_accessible  :name, :email, :password, :password_confirmation, :birth_date, :club_id
  
  validates :password, :presence => true, 
                       :confirmation => true, 
                       :length => {:within => 6..40}
                       
  validates :club_id, :presence => true

  has_many :teamusers, :foreign_key => :user_id
  has_many :teams, :through => :teamusers
  # has_many  :team_users,   
            # :foreign_key => "user_id"
#             
  # belongs_to :team_users
  
  before_save :encrypt_password
  
  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end
  
  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil  if user.nil?
    return user if user.has_password?(submitted_password)
  end
  
   def self.authenticate_with_salt(id, cookie_salt)
    user = find_by_id(id)
    (user && user.salt == cookie_salt) ? user : nil
  end
  
  private

    def encrypt_password
      self.salt = make_salt unless has_password?(password)
      self.encrypted_password = encrypt(password)
    end

    def encrypt(string)
       secure_hash("#{salt}--#{string}")
    end
    
     def make_salt
      secure_hash("#{Time.now.utc}--#{password}")
    end

    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end
  
end
