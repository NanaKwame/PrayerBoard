class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :event_set_id
      t.string :event_set_type
      t.string :name
      t.text :description
      t.text :location
      t.string :time
      t.timestamps
    end
  end
end
