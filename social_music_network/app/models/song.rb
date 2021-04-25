class Song < ActiveRecord::Base
#build Song Associations
belongs_to :artist
belongs_to :user
belongs_to :genre 
#build Song Validations

end
