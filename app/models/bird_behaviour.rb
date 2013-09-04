class BirdBehaviour < ActiveRecord::Base

	belongs_to :bird

	attr_accessible :general, :range_and_habitat, :breeding_location, :breeding_and_nesting, :foraging_and_feeding,
   :vocalization, :similar_species, :breeding_type, :egg_color, :number_of_eggs, :incubation_days,
   :egg_incubator, :nesting_material, :migration
end
