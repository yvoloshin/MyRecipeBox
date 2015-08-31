class AllrecipesController < ApplicationController

	def index
		@allrecipes = Recipe.all
	end

end
