class BirdBody < ActiveRecord::Base

	belongs_to :bird

	attr_accessible :shape, :size, :color_primary, :color_secondary, :under_part_color, :upper_part_color,
		:back_pattern, :belly_pattern, :breast_pattern
end
