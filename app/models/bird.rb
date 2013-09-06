class Bird < ActiveRecord::Base

	has_one :bird_behaviour
	has_one :bird_body
	has_one :bird_flight
	has_one :bird_head

	attr_accessible :common_english_name, :scientific_name, :family, :order, :marathi_name,
		:sanskrit_name, :sanskrit_name_description, :scientific_name_etymology, :iucn_status

	validates :common_english_name, :scientific_name, presence: true
	validates :common_english_name, :scientific_name, uniqueness: true



	searchable do
		text :common_english_name
		text :scientific_name
		string :family
		string :order 
	end


	def self.basic_search(options)
		Bird.search do

			fulltext options[:name], fields: [:common_english_name, :scientific_name] if options[:name].present?

		end
	end

end
