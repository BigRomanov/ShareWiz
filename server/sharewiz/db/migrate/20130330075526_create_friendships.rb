class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :user_id
      t.integer :friend_id
      
      t.string :email
      t.string :first_name
      t.string :last_name
      
      t.timestamps
    end
  end
end
