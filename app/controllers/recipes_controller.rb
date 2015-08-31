class RecipesController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create]

	def index
		if params[:search]
      @recipes = Recipe.search(params[:search]).order("created_at DESC")
    else
			@recipes = Recipe.all
		end
	end

	def new
		@recipe = Recipe.new
	end

	def create
		current_user.recipes.create(recipe_params)
    redirect_to root_path
  end

  def show
  	@recipe=Recipe.find(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :ingredients, :instructions)
  end

end
