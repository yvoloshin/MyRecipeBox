class AlterPhotosAddCaptionRecipeId < ActiveRecord::Migration
  def change
  	add_column :photos, :caption, :text
  	add_column :photos, :recipe_id, :integer
  end
end
