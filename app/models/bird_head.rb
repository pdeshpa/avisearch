class BirdHead < ActiveRecord::Base

	belongs_to :bird

	attr_accessible :bill_shape, :bill_size, :bill_color, :eye_color, :head_pattern, :crown_color, :forehead_color,
		:nape_color, :throat_color, :cere_color
end
