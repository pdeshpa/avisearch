class Bird < ActiveRecord::Base

	has_one :bird_behaviour
	has_one :bird_body
	has_one :bird_flight
	has_one :bird_head

	attr_accessible :common_english_name, :scientific_name, :family, :order, :marathi_name,
		:sanskrit_name, :sanskrit_name_description, :scientific_name_etymology, :iucn_status

	validates :common_english_name, :scientific_name, presence: true
end
