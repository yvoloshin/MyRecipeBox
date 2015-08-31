class MyrecipesController < ApplicationController
	before_action :authenticate_user!

	def index
		@myrecipes = current_user.recipes.all
	end
end
