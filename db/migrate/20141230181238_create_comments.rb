class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :owner_id
      t.integer :post_id
      t.string :post_type
      t.text :text
      t.timestamps
    end
  end
end
