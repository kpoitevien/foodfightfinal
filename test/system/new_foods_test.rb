require "application_system_test_case"

class NewFoodsTest < ApplicationSystemTestCase
  setup do
    @new_food = new_foods(:one)
  end

  test "visiting the index" do
    visit new_foods_url
    assert_selector "h1", text: "New Foods"
  end

  test "creating a New food" do
    visit new_foods_url
    click_on "New New Food"

    fill_in "Description", with: @new_food.description
    fill_in "Title", with: @new_food.title
    click_on "Create New food"

    assert_text "New food was successfully created"
    click_on "Back"
  end

  test "updating a New food" do
    visit new_foods_url
    click_on "Edit", match: :first

    fill_in "Description", with: @new_food.description
    fill_in "Title", with: @new_food.title
    click_on "Update New food"

    assert_text "New food was successfully updated"
    click_on "Back"
  end

  test "destroying a New food" do
    visit new_foods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "New food was successfully destroyed"
  end
end
