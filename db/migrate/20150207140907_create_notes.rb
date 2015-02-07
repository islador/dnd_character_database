class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :content
      t.integer :notable_id
      t.string :notable_type

      t.timestamps null: false
    end
  end
end
