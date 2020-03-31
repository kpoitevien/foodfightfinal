class RecipeSerializer < ActiveModel::Serializer
  attributes :id,
    :food_name,
    :ingredients,
    :image,
    :recipe,
    :cook_time, 
    :carbs, 
    :calories, 
    :sugars, 
    :fat, 
    :protein, 
    :cholesterol, 
    :sodium, 
    :image, 
    :food_id


    
end
