class CreateBirdFlights < ActiveRecord::Migration
  def change
    create_table :bird_flights do |t|
      t.string :flight_pattern
      t.string :wing_span
      t.string :wing_shape
      t.string :tail_shape
      t.string :tail_pattern
      t.string :upper_tail
      t.string :under_tail
      t.string :leg_color
      t.integer :bird_id

      t.timestamps
    end
  end
end
