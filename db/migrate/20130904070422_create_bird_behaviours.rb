class CreateBirdBehaviours < ActiveRecord::Migration
  def change
    create_table :bird_behaviours do |t|
      t.text :general
      t.text :range_and_habitat
      t.text :breeding_and_nesting
      t.text :foraging_and_feeding
      t.text :vocalization
      t.text :similar_species
      t.text :breeding_location
      t.string :breeding_type
      t.string :egg_color
      t.integer :number_of_eggs
      t.integer :incubation_days
      t.string :egg_incubator
      t.string :nesting_material
      t.string :migration
      t.integer :bird_id

      t.timestamps
    end
  end
end
