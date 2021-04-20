class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :genre
      t.belongs_to :user
      t.belongs_to :playlist
      t.belongs_to :artist 
    end
  end
end
