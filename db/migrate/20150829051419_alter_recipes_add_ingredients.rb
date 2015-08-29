class AlterRecipesAddIngredients < ActiveRecord::Migration
  def change
  	remove_column :recipes, :ingredient
  	add_column :recipes, :ingredients, :text
  end
end
