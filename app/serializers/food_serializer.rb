class FoodSerializer < ActiveModel::Serializer
  attributes :id,
    :title,
    :description,
    :recipe_count

  has_many :recipes, serializer: RecipeSerializer

  def recipe_count
    object.recipes.count
  end
end