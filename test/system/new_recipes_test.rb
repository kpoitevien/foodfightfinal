require "application_system_test_case"

class NewRecipesTest < ApplicationSystemTestCase
  setup do
    @new_recipe = new_recipes(:one)
  end

  test "visiting the index" do
    visit new_recipes_url
    assert_selector "h1", text: "New Recipes"
  end

  test "creating a New recipe" do
    visit new_recipes_url
    click_on "New New Recipe"

    fill_in "New food", with: @new_recipe.New_food_id
    fill_in "Calories", with: @new_recipe.calories
    fill_in "Carbs", with: @new_recipe.carbs
    fill_in "Cholesterol", with: @new_recipe.cholesterol
    fill_in "Cook time", with: @new_recipe.cook_time
    fill_in "Fat", with: @new_recipe.fat
    fill_in "Image", with: @new_recipe.image
    fill_in "Ingredients", with: @new_recipe.ingredients
    fill_in "Protein", with: @new_recipe.protein
    fill_in "Recipe", with: @new_recipe.recipe
    fill_in "Sodium", with: @new_recipe.sodium
    fill_in "Sugars", with: @new_recipe.sugars
    click_on "Create New recipe"

    assert_text "New recipe was successfully created"
    click_on "Back"
  end

  test "updating a New recipe" do
    visit new_recipes_url
    click_on "Edit", match: :first

    fill_in "New food", with: @new_recipe.New_food_id
    fill_in "Calories", with: @new_recipe.calories
    fill_in "Carbs", with: @new_recipe.carbs
    fill_in "Cholesterol", with: @new_recipe.cholesterol
    fill_in "Cook time", with: @new_recipe.cook_time
    fill_in "Fat", with: @new_recipe.fat
    fill_in "Image", with: @new_recipe.image
    fill_in "Ingredients", with: @new_recipe.ingredients
    fill_in "Protein", with: @new_recipe.protein
    fill_in "Recipe", with: @new_recipe.recipe
    fill_in "Sodium", with: @new_recipe.sodium
    fill_in "Sugars", with: @new_recipe.sugars
    click_on "Update New recipe"

    assert_text "New recipe was successfully updated"
    click_on "Back"
  end

  test "destroying a New recipe" do
    visit new_recipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "New recipe was successfully destroyed"
  end
end
