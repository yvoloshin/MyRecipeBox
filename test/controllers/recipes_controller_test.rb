require 'test_helper'
# using fixtures

class RecipesControllerTest < ActionController::TestCase

	# test "recipe show page" do
	# 	user = User.create(email: users(:one).email)
	# 	sign_in user
	# 	recipe = Recipe.create(name: recipes(:one).name,
	# 													ingredients: recipes(:one).ingredients,
	# 													instructions: recipes(:one).instructions,
	# 													user: recipes(:one).user)
	#   get :show, :id => recipe.id
	# assert_response :success
	#  end

	test "create recipe" do

		user = users(:one)		
		sign_in user

		# assert_difference 'user.recipes.count' do
		# 	puts user.recipes.count
	 #    post :create, {:recipe => {
	 #        :name => 'test2', # recipes(:two).name,
	 #        :ingredients => 'ingredient1, ingredient2', # recipes(:two).ingredients,
	 #        :instructions => 'instruction1, instruction2', # recipes(:two).instructions,
	 #        :user => user
	 #      }
	 #    }
	 #  end

	 		puts user.recipes.count
	 		puts Recipe.count

	    # recipe = Recipe.create(name: recipes(:two).name,
	 			# 										ingredients: recipes(:two).ingredients,
	 			# 										instructions: recipes(:two).instructions)
		
	    post :create, {:recipe => {
	        :name => 'test2',
	        :ingredients => 'ingredient1, ingredient2', 
	        :instructions => 'instruction1, instruction2' 
	      }
	    }

	    # post :create, { :recipe => recipes(:one) }

	    puts user.recipes.count
	    puts Recipe.count
	  
		# assert_redirected_to root_path
	  
	  assert_equal 1, user.recipes.count

	end


end
