require 'test_helper'
# using fixtures

class RecipesControllerTest < ActionController::TestCase

	test "recipe show page" do
		user = users(:one)
		sign_in user
		recipe = Recipe.create(name: recipes(:one).name,
														ingredients: recipes(:one).ingredients,
														instructions: recipes(:one).instructions,
														user: recipes(:one).user)
	  get :show, :id => recipe.id
	  assert_response :success
	end

	test "create recipe" do

		user = users(:one)		
		sign_in user

		assert_difference 'user.recipes.count' do
	    post :create, {:recipe => {
	        :name => 'test2',
	        :ingredients => 'ingredient1, ingredient2', 
	        :instructions => 'instruction1, instruction2' 
	      }
	    }
	  end
	  
	  assert_redirected_to root_path
	  
	  assert_equal 1, user.recipes.count

	end


end
