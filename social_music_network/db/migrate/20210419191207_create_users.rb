class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :password
      t.string :password_digest
      t.integer :artist_id
      t.integer :song_id
      t.integer :playlist_id
      # Put associations for user
    end
  end
end
