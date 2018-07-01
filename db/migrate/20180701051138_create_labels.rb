class CreateLabels < ActiveRecord::Migration[5.1]
  def change
    create_table :labels do |t|
      t.string :name
      t.string :description
      t.string :font_color
      t.string :background_color
      t.string :underline_color
      t.timestamps
    end
  end
end
