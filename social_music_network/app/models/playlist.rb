class Playlist < ApplicationRecord
    
    #Associations
    #belongs_to :user
    has_many :songs
    has_many :artists, through: :songs
    belongs_to_many :users

    #Validations
    validates :title, presence: true
    validates :description, presence: true
    #validates :description, #Maxmimum length is 140 characters.

end
