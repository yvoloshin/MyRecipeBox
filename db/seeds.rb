# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# puts "Creating user..."

puts "Creating recipes... "

		recipes = Recipe.create([
			{
			name: "Oatmeal Banana Pancakes", 
			description: "Easy and delicious!", 
			ingredients:
				"Old fashioned oatmeal (1 cup) 
				3 eggs 
				1 banana 
				Vanilla extract (2 teaspoons) 
				Vegetable oil for frying", 
			instructions: 
				"1. Combine all ingredients in a blender. 
				2. Process until the mixture is smooth. 
				3. Place a thin coat of vegetable oil on the frying pan. 
				4. Pour 1/2 cup of the mixture onto a frying pan and fry 2-3 minutes per side, until the pancakes are golden brown.

				(Recipe courtesy of http://brokeandbougie.blogspot.com)", 
			user_id: 1
			},

			{
			name: "Fish in Tomato Sauce", 
			description: "This is a version of my grandmother's Fish in Tomato Sauce", 
			ingredients:
				"1 lb fish filets (Any fish with firm white flesh will do, such as tilapia or cod. Here, I used tilapia.) 
				1/4 cup all-purpose flour 
				1 large carrot 
				1 onion 
				1 red bell pepper 
				1 14 oz can of tomato sauce 
				1/2 teaspoon sugar 
				1/4 teaspoon each of salt and pepper", 
			instructions: 
				"1. Sprinkle fish with salt and pepper 
				2. Pour the flour on a plate and dredge the fish through flour. Set aside. 
				3. Coarsely grate the carrot using either a manual grater or a food processor. 
				4. Finely chop the onion and bell pepper. 
				5. Fry the fish in a skillet until slightly golden-brown, about 3 minutes per side. Remove from skillet. 
				6. Saute the onion in the same skillet until it becomes translucent and starts to brown, about 10 minutes. 
				7. Add carrot, bell pepper, tomato sauce, salt, pepper, and sugar. Saute uncovered until carrots and pepper are tender, about 10 minutes. 
				8. Add fish to skillet and mix well with the sauce. 
				9. Cover and cook on low heat for 10 more minutes.", 
			user_id: 1
			}
		])

puts "All done!"

