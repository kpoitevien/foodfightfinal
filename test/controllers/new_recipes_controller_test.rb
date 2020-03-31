require 'test_helper'

class NewRecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_recipe = new_recipes(:one)
  end

  test "should get index" do
    get new_recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_new_recipe_url
    assert_response :success
  end

  test "should create new_recipe" do
    assert_difference('NewRecipe.count') do
      post new_recipes_url, params: { new_recipe: { New_food_id: @new_recipe.New_food_id, calories: @new_recipe.calories, carbs: @new_recipe.carbs, cholesterol: @new_recipe.cholesterol, cook_time: @new_recipe.cook_time, fat: @new_recipe.fat, image: @new_recipe.image, ingredients: @new_recipe.ingredients, protein: @new_recipe.protein, recipe: @new_recipe.recipe, sodium: @new_recipe.sodium, sugars: @new_recipe.sugars } }
    end

    assert_redirected_to new_recipe_url(NewRecipe.last)
  end

  test "should show new_recipe" do
    get new_recipe_url(@new_recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_new_recipe_url(@new_recipe)
    assert_response :success
  end

  test "should update new_recipe" do
    patch new_recipe_url(@new_recipe), params: { new_recipe: { New_food_id: @new_recipe.New_food_id, calories: @new_recipe.calories, carbs: @new_recipe.carbs, cholesterol: @new_recipe.cholesterol, cook_time: @new_recipe.cook_time, fat: @new_recipe.fat, image: @new_recipe.image, ingredients: @new_recipe.ingredients, protein: @new_recipe.protein, recipe: @new_recipe.recipe, sodium: @new_recipe.sodium, sugars: @new_recipe.sugars } }
    assert_redirected_to new_recipe_url(@new_recipe)
  end

  test "should destroy new_recipe" do
    assert_difference('NewRecipe.count', -1) do
      delete new_recipe_url(@new_recipe)
    end

    assert_redirected_to new_recipes_url
  end
end
