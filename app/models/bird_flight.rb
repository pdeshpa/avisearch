class BirdFlight < ActiveRecord::Base

	belongs_to :bird

	attr_accessible :flight_pattern, :wing_span, :wing_shape, :tail_shape, :tail_pattern,
		:upper_tail, :under_tail, :leg_color
end
