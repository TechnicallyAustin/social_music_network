class User < ActiveRecord::Base 
has_secure_password
# Build user associations
has_many :playlists
has_many :songs
has_many :songs, through: :playlists

 validates :first_name, presence: true 
 validates :last_name, presence: true 
 validates :email_address, presence: true
 validates :email_address, uniqueness: true
 validates_format_of :email_address, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
 validates :password, presence: true 
 has_secure_password #-- for bcrypt

    def full_name
        self.first_name + " " + self.last_name
    end

end
