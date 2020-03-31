class RenameTables < ActiveRecord::Migration[6.0]
  def change
    rename_table :new_foods, :foods
    rename_table :new_recipes, :recipes
    rename_column :recipes, :new_food_id, :food_id
  end
end
