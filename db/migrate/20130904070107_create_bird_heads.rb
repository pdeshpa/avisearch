class CreateBirdHeads < ActiveRecord::Migration
  def change
    create_table :bird_heads do |t|
      t.string :bill_shape
      t.string :bill_size
      t.string :bill_color
      t.string :eye_color
      t.string :head_pattern
      t.string :crown_color
      t.string :forehead_color
      t.string :nape_color
      t.string :throat_color
      t.string :cere_color
      t.integer :bird_id
      t.timestamps
    end
  end
end
