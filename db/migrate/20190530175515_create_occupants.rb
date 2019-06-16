class CreateOccupants < ActiveRecord::Migration[5.2]
  def change
    create_table :occupants do |t|
      t.string :name
      t.string :password_digest
      t.integer :establishment_id, default: 1
      t.string :username
      t.string :avatar_url
      t.string :email
      t.string :uid
      t.string :provider
      t.string :oauth_token

      t.timestamps
    end
  end
end
