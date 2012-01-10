class User < ActiveRecord::Base
  
  attr_accessor :password
  attr_accessible  :name, :email, :password, :password_confirmation
  
  validates :password, :presence => true, 
                       :confirmation => true, 
                       :length => {:within => 6..40}
  
   before_save :encrypt_password

  private

    def encrypt_password
      self.encrypted_password = encrypt(password)
    end

    def encrypt(string)
      string # Only a temporary implementation!
    end
  
end
