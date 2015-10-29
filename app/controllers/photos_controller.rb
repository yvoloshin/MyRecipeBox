class PhotosController < ApplicationController

	def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.photos.create(photo_params)
    redirect_to recipe_path(@recipe)
  end

  private

  def photo_params
    params.require(:photo).permit(:picture, :caption)
  end

end
