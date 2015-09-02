class CommentsController < ApplicationController
	before_action :authenticate_user!

	def create
		@recipe = Recipe.find(params[:recipe_id])
		@recipe.comments.create(comment_params.merge(:user => current_user))
		redirect_to recipe_path(@recipe)
	end

	private

  def comment_params
    params.require(:comment).permit(:message, :rating)
  end

end
