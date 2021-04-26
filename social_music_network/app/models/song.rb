class Song < ActiveRecord::Base
#build Song Associations
belongs_to :artist
belongs_to :user
belongs_to :genre 
#build Song Validations
validates :title, presence: true 
validates :artist, presence: true 
validates :genre, presence: true 
# create a validation that will check for a prexisting song by artist and title


end
