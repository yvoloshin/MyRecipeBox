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
		@recipe = current_user.recipes.create(recipe_params)
		if @recipe.valid?
			redirect_to root_path
		else
			render :new, :status => :unprocessable_entity
		end
  end

  def show
  	@recipe = Recipe.find(params[:id])
  end

  def edit
		@recipe = Recipe.find(params[:id])

		if @recipe.user != current_user
			return render :text => 'Not Allowed', :status => :forbidden
		end
	end

	def update
		@recipe = Recipe.find(params[:id])

		if @recipe.user != current_user
			return render :text => 'Not Allowed', :status => :forbidden
		end
		
		@recipe.update_attributes(recipe_params)

		if @recipe.valid?
			redirect_to root_path
		else
			render :edit, :status => :unprocessable_entity
		end
		
	end

	def destroy
		@recipe = Recipe.find(params[:id])
		if @recipe.user != current_user
			return render :text => 'Not Allowed', :status => :forbidden
		end
		@recipe.destroy
		redirect_to root_path
	end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :ingredients, :instructions)
  end

end
