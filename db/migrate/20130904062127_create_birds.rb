class CreateBirds < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      t.string :common_english_name
      t.string :scientific_name
      t.string :family
      t.string :order
      t.string :marathi_name
      t.string :sanskrit_name
      t.text :sanskrit_name_description
      t.text :scientific_name_etymology
      t.string :iucn_status

      t.timestamps
    end
  end
end
