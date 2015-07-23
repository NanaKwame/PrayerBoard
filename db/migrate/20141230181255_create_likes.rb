class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :owner_id
      t.integer :post_id
      t.string :post_type
      t.timestamps
    end
  end
end
