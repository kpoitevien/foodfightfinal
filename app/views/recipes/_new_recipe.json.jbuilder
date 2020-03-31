json.extract! recipe, :id, :food_name ,:ingredients, :recipe, :cook_time, :carbs, :calories, :sugars, :fat, :protein, :cholesterol, :sodium, :image, :New_food_id, :created_at, :updated_at
json.url new_recipe_url(recipe, format: :json)
