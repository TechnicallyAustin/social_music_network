class Artist < ActiveRecord::Base 
# Build Artist Associations
has_many :songs
belongs_to :playlist
has_many :genres, through: :songs
# Validations
validates :name, presence: true 
validates :name, uniqueness: true 

end
