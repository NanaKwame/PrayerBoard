class CreatePrayerRequests < ActiveRecord::Migration
  def change
    create_table :prayer_requests do |t|
      t.integer :prayer_id
      t.string :prayer_type
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
