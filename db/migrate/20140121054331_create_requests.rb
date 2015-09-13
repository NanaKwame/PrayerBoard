class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :type, :default => "Event"
      t.string :status, :default => "Pending"
      t.timestamps
    end
  end
end
