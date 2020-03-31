require 'test_helper'

class NewFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_food = new_foods(:one)
  end

  test "should get index" do
    get new_foods_url
    assert_response :success
  end

  test "should get new" do
    get new_new_food_url
    assert_response :success
  end

  test "should create new_food" do
    assert_difference('NewFood.count') do
      post new_foods_url, params: { new_food: { description: @new_food.description, title: @new_food.title } }
    end

    assert_redirected_to new_food_url(NewFood.last)
  end

  test "should show new_food" do
    get new_food_url(@new_food)
    assert_response :success
  end

  test "should get edit" do
    get edit_new_food_url(@new_food)
    assert_response :success
  end

  test "should update new_food" do
    patch new_food_url(@new_food), params: { new_food: { description: @new_food.description, title: @new_food.title } }
    assert_redirected_to new_food_url(@new_food)
  end

  test "should destroy new_food" do
    assert_difference('NewFood.count', -1) do
      delete new_food_url(@new_food)
    end

    assert_redirected_to new_foods_url
  end
end
