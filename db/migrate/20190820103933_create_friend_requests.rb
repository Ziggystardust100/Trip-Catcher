class CreateFriendRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :friend_requests do |t|
      t.references :catcher, foreign_key: true
      t.integer :friend_id

      t.timestamps
    end
  end
end
