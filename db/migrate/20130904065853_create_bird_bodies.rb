class CreateBirdBodies < ActiveRecord::Migration
  def change
    create_table :bird_bodies do |t|
      t.string :shape
      t.string :size
      t.string :color_primary
      t.string :color_secondary
      t.string :under_part_color
      t.string :upper_part_color
      t.string :back_pattern
      t.string :belly_pattern
      t.string :breast_pattern
      t.integer :bird_id

      t.timestamps
    end
  end
end
