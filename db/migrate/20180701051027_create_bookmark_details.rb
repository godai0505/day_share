class CreateBookmarkDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmark_details do |t|
      t.integer :bookmark_id
      t.text :memo
      t.binary :favicon
      t.timestamps
    end
  end
end
