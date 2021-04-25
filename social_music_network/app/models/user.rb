class User < ActiveRecord::Base 
# Build user associations
has_many :playlists
has_many :songs
has_many :songs, through: :playlists

# validates :first_name
# validates :last_name
# validates :email_address
# validates :password
# has_secure_password #-- for bcrypt
end
