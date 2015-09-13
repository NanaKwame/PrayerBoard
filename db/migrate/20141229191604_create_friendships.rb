class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :from_id
      t.integer :to_id
      t.string :status, :default => "Pending"
      t.timestamps
    end
  end
end
