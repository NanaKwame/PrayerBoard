class AddUserIdToPrayerRequest < ActiveRecord::Migration
  def change
  	add_column :prayer_requests, :user_id, :integer
  end
end
