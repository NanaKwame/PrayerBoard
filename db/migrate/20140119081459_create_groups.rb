class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :owner_id
      t.text :description
      t.string :name
      t.attachment :image
      t.timestamps
    end
  end
end
