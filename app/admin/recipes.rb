ActiveAdmin.register Recipe do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #

  index do
    column "Food" do |recipe|
      recipe.food_name
    end
    column :food_id
    
    actions
  end

  # permit_params :ingredients, :recipe, :cook_time, :carbs, :calories, :sugars, :fat, :protein, :cholesterol, :sodium, :image, :new_food_id
  #
  # or
  #
  permit_params do
    permitted = [:food_name, :ingredients, :recipe, :cook_time, :carbs, :calories, :sugars, :fat, :protein, :cholesterol, :sodium, :image, :food_id]
    permitted << :other if params[:action] == 'create' && current_admin_user
    permitted
  end
  
end
