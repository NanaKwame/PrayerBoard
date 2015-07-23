class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :member_id
      t.integer :group_id
      t.string :status, :default => "Pending"
      t.timestamps
    end
  end
end
