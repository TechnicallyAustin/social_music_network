class CreatePlaylists < ActiveRecord::Migration[6.0]
  def change
    create_table :playlists do |t|
      t.string :title
      t.text :description
      t.belongs_to :user 
    end
  end
end
