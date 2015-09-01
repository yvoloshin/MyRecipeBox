class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :message
      t.string :rating

      t.integer :user_id
      t.integer :recipe_id
      t.timestamps null: false
    end

    add_index :comments, [:user_id, :recipe_id]
    add_index :comments, :recipe_id
  end
end
