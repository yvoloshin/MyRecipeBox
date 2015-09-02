# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

recipe1 = Recipe.create([{name: 'Oatmeal Banana Pancakes', description: 'Easy and delicious!', ingredients:
'Old fashioned oatmeal (1 cup) 
3 eggs 
1 banana 
Vanilla extract (2 teaspoons) 
Vegetable oil for frying', instructions: '1. Combine all ingredients in a blender. 
2. Process until the mixture is smooth. 
3. Place a thin coat of vegetable oil on the frying pan. 
4. Pour 1/2 cup of the mixture onto a frying pan and fry 2-3 minutes per side, until the pancakes are golden brown.

(Recipe courtesy of http://brokeandbougie.blogspot.com)', user_id: 1}])
