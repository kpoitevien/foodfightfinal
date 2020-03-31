# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@adminnnnnnn.co', password: 'password', password_confirmation: 'password') if Rails.env.development?
makeFoods = [
  {
  "id": 1,
  "title": "Pizza",
  "description": "hbv",
  "recipe_count": 1,
  "recipes": [
  {
  "id": 1,
  "food_name": "edsgsd",
  "ingredients": "dgggd",
  "image": "dsgdzg",
  "recipe":0 ,
  "cook_time": 0,
  "carbs": 0,
  "calories": 0,
  "sugars": 0,
  "fat": 0,
  "protein": 0,
  "cholesterol": 0,
  "sodium": 0,
  "food_id": 1
  }
  ]
  },
  {
  "id": 2,
  "title": "Chicken",
  "description": "hjgh",
  "recipe_count": 8,
  "recipes": [
  {
  "id": 2,
  "food_name": "Cooker Cheesy Chicken and Rice",
  "ingredients": "* 4 boneless skinless chicken breast  * 1 large onion, chopped  * 1-8 ounce box zatarain's yellow rice mix, cooked according to",
  "image": "https://www.thisgrandmaisfun.com/wp-content/uploads/2012/10/Cheesy-Crockpot-Chicken.jpeg",
  "recipe": "Preheat oven to 400 degrees F (200 degrees C). Grease a baking dish.   Step 2 Spread about 2 tablespoons of pesto per chicken breast over the top of each breast, and wrap each breast in prosciutto slices to cover the entire breast. Place the wrapped chicken breasts into the prepared baking dish.   Step 3 Bake in the preheated oven until the chicken is no longer pink, the juices run clear, and the prosciutto is lightly crisped, about 25 minutes.",
  "cook_time": "Cook: 25 mins",
  "carbs": 45,
  "calories": 548,
  "sugars": 17,
  "fat": 22,
  "protein": 67,
  "cholesterol": 31,
  "sodium": 21,
  "food_id": 2
  },
  {
  "id": 5,
  "food_name": "Whole30 Fried Chicken recipes",
  "ingredients": "4 Eggs/ or 6 Egg Whites, Garlic Powder 2 teaspoon, Onion Powder 1 teaspoon, Cayenne Pepper 1/2 – 1 teaspoon , Paprika 1/2 teaspoon, Black Pepper  1/4 teaspoon,  Sea Salt  1/2 teaspoon (to taste),  chile pepper ",
  "image": "https://4.bp.blogspot.com/-ZBQ-ikA0W7E/U62Vf0VqRJI/AAAAAAAACio/dtXlYshpvw8/s1600/IMG_5740.JPG",
  "recipe": "Season chicken with salt, pepper and garlic powder. Mix coconut aminos, chicken broth, tapioca starch, and ginger in a small bowl until well combined and no lumps. Heat 2 tablespoons of oil in a large skillet over medium-high heat. Add chicken and cook about 8 -10 minutes or until chicken is no longer pink and cooked, stirring occasionally. Remove chicken from the skillet and reserve.  Add the remaining 2 tablespoons of oil to the same skillet. Add garlic and sauté, stirring constantly, until fragrant, about 1 minute. Add mushrooms and asparagus and cook until slightly tender, about 5 minutes. Return the chicken to the pan and stir in the reserved coconut aminos mixture; toss to heat through. Bring to a full boil to thicken. Garnish with sliced and scallions and sesame seed, if desired. Server with mashed potatoes, white rice, quinoa, or vegetables.",
  "cook_time": "It's made in less than 30 minutes.",
  "carbs": 54,
  "calories": 760,
  "sugars": 17,
  "fat": 22,
  "protein": 56,
  "cholesterol": 21,
  "sodium": 18,
  "food_id": 2
  },
  {
  "id": 12,
  "food_name": "Chicken and Asparagus Skillet",
  "ingredients": "chicken, bell peppers, onions, asparagus, salt, pepper,",
  "image": "https://mommyshomecooking.com/wp-content/uploads/2018/03/Easy-Whole-30-Chicken-and-Asparagus-Skillet-1-768x1075.jpg",
  "recipe": "Season chicken with salt, pepper and garlic powder. Mix coconut aminos, chicken broth, tapioca starch, and ginger in a small bowl until well combined and no lumps. Heat 2 tablespoons of oil in a large skillet over medium-high heat. Add chicken and cook about 8 -10 minutes or until chicken is no longer pink and cooked, stirring occasionally. Remove chicken from the skillet and reserve.  Add the remaining 2 tablespoons of oil to the same skillet. Add garlic and sauté, stirring constantly, until fragrant, about 1 minute. Add mushrooms and asparagus and cook until slightly tender, about 5 minutes. Return the chicken to the pan and stir in the reserved coconut aminos mixture; toss to heat through. Bring to a full boil to thicken. Garnish with sliced and scallions and sesame seed, if desired. Server with mashed potatoes, white rice, quinoa, or vegetables.",
  "cook_time": "It's made in less than 30 minutes.",
  "carbs": 20,
  "calories": 700,
  "sugars": 5,
  "fat": 15,
  "protein": 35,
  "cholesterol": 20,
  "sodium": 5,
  "food_id": 2
  },
  {
  "id": 13,
  "food_name": "Pesto Chicken ",
  "ingredients": "4 skinless, boneless chicken breast halves   ½ cup prepared basil pesto, divided 4 thin slices prosciutto",
  "image": "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F1356789.jpg&w=595&h=595&c=sc&poi=face&q=85",
  "recipe": "Preheat oven to 400 degrees F (200 degrees C). Grease a baking dish.   Step 2 Spread about 2 tablespoons of pesto per chicken breast over the top of each breast, and wrap each breast in prosciutto slices to cover the entire breast. Place the wrapped chicken breasts into the prepared baking dish.   Step 3 Bake in the preheated oven until the chicken is no longer pink, the juices run clear, and the prosciutto is lightly crisped, about 25 minutes.",
  "cook_time": "Cook: 25 mins",
  "carbs": 20,
  "calories": 535,
  "sugars": 3,
  "fat": 8,
  "protein": 25,
  "cholesterol": 9,
  "sodium": 10,
  "food_id": 2
  },
  {
  "id": 14,
  "food_name": "Three-Ingredient Baked Chicken Breasts",
  "ingredients": "¼ cup butter, melted 1 teaspoon salt   4 skinless, boneless chicken breast halves",
  "image": "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2020%2F03%2F2267790.jpg&w=1200&c=sc&poi=face&q=85",
  "recipe": "Preheat oven to 350 degrees F (175 degrees C). Lightly butter a baking dish.   Step 2 Stir 1/4 cup melted butter and salt together in a bowl.   Step 3 Arrange chicken in the baking dish. Brush butter mixture onto the chicken until thoroughly coated, pouring any extra over the chicken.   Step 4 Bake in the preheated oven until no longer pink in the center and the juices run clear, about 30 to 45 minutes. An instant-read thermometer inserted into the center should read at least 165 degrees F (74 degrees C).",
  "cook_time": "Cook: 25 mins",
  "carbs": 27,
  "calories": 345,
  "sugars": 7,
  "fat": 10,
  "protein": 49,
  "cholesterol": 28,
  "sodium": 17,
  "food_id": 2
  },
  {
  "id": 15,
  "food_name": "Fiesta Slow Cooker Shredded Chicken Tacos",
  "ingredients": "1 cup chicken broth   3 tablespoons taco seasoning mix 1 pound skinless, boneless chicken breasts  ",
  "image": "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2020%2F03%2F2280317.jpg&w=1200&c=sc&poi=face&q=85",
  "recipe": "Combine chicken broth and taco seasoning mix in a bowl. Place chicken in a slow cooker and pour chicken broth mixture over chicken.   Step 2 Cook on Low for 6 to 8 hours. Shred chicken.",
  "cook_time": "Cook: 15mins",
  "carbs": 13,
  "calories": 206,
  "sugars": 4,
  "fat": 9,
  "protein": 25,
  "cholesterol": 17,
  "sodium": 35,
  "food_id": 2
  },
  {
  "id": 3,
  "food_name": "Roasters-Classic Herb Chicken & Potatoes",
  "ingredients": "1 1/2 lbs. boneless, skinless chicken breasts (4 breasts) 1 lb. baking potatoes, cut into 1/2-inch slices 2 Tbsp. water 1 pack Knorr® Roasters™ Roasting Bag & Seasoning Blend for Chicken- Classic Herb with a Hint of Lemon",
  "image": "https://thecafesucrefarine.com/wp-content/uploads/Roasted-Chicken-and-Potatoes-with-Lemon-Garlic-and-Herbs-12.jpg",
  "recipe": "Combine chicken broth and taco seasoning mix in a bowl. Place chicken in a slow cooker and pour chicken broth mixture over chicken.   Step 2 Cook on Low for 6 to 8 hours. Shred chicken.",
  "cook_time": "Cook: 15mins",
  "carbs": 786,
  "calories": 35,
  "sugars": 15,
  "fat": 35,
  "protein": 45,
  "cholesterol": 15,
  "sodium": 9,
  "food_id": 2
  },
  {
  "id": 4,
  "food_name": "Sweet and Spicy Black Bean Chicken Recipe",
  "ingredients": "1 pkg. boneless skinless chicken breasts (4-6 depending on the amount you need) 1 (8-oz) can of diced pineapples, semi-drained (a little liquid is fine but no the whole can) 2 tblsp. apple cider vinegar 1 to 1 1/2 c. cooked black beans* 1 pinch crushed red pepper flakes Salt, pepper, garlic powder & paprika to taste",
  "image": "http://s2.grouprecipes.com/images/recipes/original/5966638568.JPG",
  "recipe": "Season chicken with salt, pepper and garlic powder. Mix coconut aminos, chicken broth, tapioca starch, and ginger in a small bowl until well combined and no lumps. Heat 2 tablespoons of oil in a large skillet over medium-high heat. Add chicken and cook about 8 -10 minutes or until chicken is no longer pink and cooked, stirring occasionally. Remove chicken from the skillet and reserve.  Add the remaining 2 tablespoons of oil to the same skillet. Add garlic and sauté, stirring constantly, until fragrant, about 1 minute. Add mushrooms and asparagus and cook until slightly tender, about 5 minutes. Return the chicken to the pan and stir in the reserved coconut aminos mixture; toss to heat through. Bring to a full boil to thicken. Garnish with sliced and scallions and sesame seed, if desired. Server with mashed potatoes, white rice, quinoa, or vegetables.",
  "cook_time": "Cook: 25 mins",
  "carbs": 25,
  "calories": 569,
  "sugars": 11,
  "fat": 22,
  "protein": 59,
  "cholesterol": 26,
  "sodium": 13,
  "food_id": 2
  }
  ]
  },
  {
  "id": 3,
  "title": "Seafood",
  "description": "hgj",
  "recipe_count": 1,
  "recipes": [
  {
  "id": 6,
  "food_name": "kuydjthr",
  "ingredients": "jhrgf",
  "image": "908909",
  "recipe": 0,
  "cook_time": 0,
  "carbs": 0,
  "calories": 0,
  "sugars": 0,
  "fat": 0,
  "protein": 0,
  "cholesterol": 0,
  "sodium": 0,
  "food_id": 3
  }
  ]
  },
  {
  "id": 4,
  "title": "Beef",
  "description": "bnv",
  "recipe_count": 1,
  "recipes": [
  {
  "id": 7,
  "food_name": "sfsdg",
  "ingredients": "gdgfed",
  "image": "8654",
  "recipe": 0,
  "cook_time": 0,
  "carbs": 0,
  "calories": 0,
  "sugars": 0,
  "fat": 0,
  "protein": 0,
  "cholesterol": 0,
  "sodium": 0,
  "food_id": 4
  }
  ]
  },
  {
  "id": 5,
  "title": "Pork",
  "description": "nbvb",
  "recipe_count": 1,
  "recipes": [
  {
  "id": 8,
  "food_name": "ryetwfrhty",
  "ingredients": "hgzfsdah",
  "image": "8675",
  "recipe": 0,
  "cook_time": 0,
  "carbs": 0,
  "calories": 0,
  "sugars": 0,
  "fat": 0,
  "protein": 0,
  "cholesterol": 0,
  "sodium": 0,
  "food_id": 5
  }
  ]
  },
  {
  "id": 6,
  "title": "Tacos",
  "description": "bnh",
  "recipe_count": 1,
  "recipes": [
  {
  "id": 9,
  "food_name": "dvgSvSBDS",
  "ingredients": "sfefs",
  "image": "vxcngf",
  "recipe": 0,
  "cook_time": 0,
  "carbs": 0,
  "calories": 0,
  "sugars": 0,
  "fat": 0,
  "protein": 0,
  "cholesterol": 0,
  "sodium": 0,
  "food_id": 6
  }
  ]
  },
  {
  "id": 7,
  "title": "Burger",
  "description": "nbb",
  "recipe_count": 2,
  "recipes": [
  {
  "id": 10,
  "food_name": "Bison Burger",
  "ingredients": "12 oz. ground grass-fed bison, 1/2 c. chopped onion, 1/2 tsp. garlic powder, 1/4 tsp. smoked paprika",
  "image": "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/recipe/bison-burger-1456733167.jpg",
  "recipe": 0,
  "cook_time": 0,
  "carbs": 0,
  "calories": 0,
  "sugars": 0,
  "fat": 0,
  "protein": 0,
  "cholesterol": 0,
  "sodium": 0,
  "food_id": 7
  },
  {
  "id": 11,
  "food_name": "Paleo Cod Burger",
  "ingredients": "1 lb wild caught cod, 1 red onion or shallot finely chopped, 1 zucchini grated, 1 cup parsley finely chopped, 1 lemon juiced,  3 clove garlic crushed,  1 free range egg",
  "image": "https://www.edamam.com/web-img/bf5/bf58d0a64cdeea4fc72678bd9519a0e2.jpg",
  "recipe": 0,
  "cook_time": 0,
  "carbs": 0,
  "calories": 0,
  "sugars": 0,
  "fat": 0,
  "protein": 0,
  "cholesterol": 0,
  "sodium": 0,
  "food_id": 7
  }
  ]
  }
  ]


  makeFoods.each do |food_hash|
  title = food_hash[:title]
  description = food_hash[:description]
#   recipe_count = food[:recipe_count]
  # not sure if missing 
  food = Food.create(title: title, description: description)

  recipes = food_hash[:recipes]

  recipes.each do |r|
    food_name = r[:food_name]
    ingredients = r[:ingredients]
    image = r[:image]
    recipe = r[:recipe]
    # the rest of the properties from the json
    p Recipe.create(food_name: food_name, ingredients: ingredients, image: image, food: food, recipe: recipe )
  end
end
