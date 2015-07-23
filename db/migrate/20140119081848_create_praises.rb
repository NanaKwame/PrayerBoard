class CreatePraises < ActiveRecord::Migration
  def change
    create_table :praises do |t|
      t.integer :praise_report_id
      t.string :praise_report_type
      t.string :name
      t.text :text
      t.attachment :image
      t.string :video_url
      t.timestamps
    end
  end
end
