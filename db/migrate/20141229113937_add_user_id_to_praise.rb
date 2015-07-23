class AddUserIdToPraise < ActiveRecord::Migration
  def change
  	add_column :praises, :user_id, :integer
  end
end
