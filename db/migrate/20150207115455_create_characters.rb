class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :location
      t.string :alignment
      t.string :role
      t.string :occupation
      t.string :allegiance
      t.string :goals

      t.timestamps null: false
    end
  end
end
