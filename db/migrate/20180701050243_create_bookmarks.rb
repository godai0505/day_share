class CreateBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks do |t|
      t.integer :user_id
      t.integer :folder_id
      t.integer :label_id
      t.string :name
      t.text :url
      t.boolean :favarite
      t.boolean :read_later
      t.timestamps
    end
  end
end
