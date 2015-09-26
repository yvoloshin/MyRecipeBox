require 'test_helper'
# using fixtures

class RecipesControllerTest < ActionController::TestCase

	setup do
    @recipe1 = recipes(:one)
    @recipe2 = recipes(:two)
    @user = users(:one)
  end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:recipes)
  # end

	test "should get new" do
		sign_in @user
    get :new
    assert_response :success
  end

	
	test "should create recipe" do
		sign_in @user
		assert_difference '@user.recipes.count' do
	    post :create, {:recipe => {
	        :name => @recipe1.name,
	        :ingredients => @recipe1.ingredients, 
	        :instructions => @recipe1.instructions 
	      }
	    }
	  end
	  assert_redirected_to root_path
	  assert_equal 1, @user.recipes.count
	end

	test "should not create recipe with invalid name" do
		sign_in @user
		assert_no_difference '@user.recipes.count' do
	    post :create, {:recipe => {
	        :name => @recipe2.name,
	        :ingredients => @recipe2.ingredients, 
	        :instructions => @recipe2.instructions 
	      }
	    }
	  end

	  # respond with :status => :unprocessable_entity
	  assert_response(422)
	 
	end

	test "should display recipe show page" do
	  get :show, :id => @recipe1.id
	  assert_response :success
	end

	test "should delete recipe" do
		sign_in @user
		post :create, {:recipe => {
	        :name => @recipe1.name,
	        :ingredients => @recipe1.ingredients, 
	        :instructions => @recipe1.instructions 
	      }
	    }

    assert_difference '@user.recipes.count', -1 do
	  	recipe = Recipe.find_by(name: @recipe1.name, user: @user)
	    delete :destroy, id: recipe
	  end
	  assert_redirected_to root_path 
	  assert_equal 0, @user.recipes.count

	end


end
