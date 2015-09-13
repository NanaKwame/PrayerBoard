class CreateVerses < ActiveRecord::Migration
  def change
    create_table :verses do |t|
      t.integer :bible_verse_id
      t.string :bible_verse_type
      t.string :where
      t.text :text
      t.timestamps
    end
  end
end
