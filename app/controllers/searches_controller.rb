class SearchesController < ApplicationController

	def index
		if params.present?
			@results = Bird.basic_search(params).results
		end
	end
end
