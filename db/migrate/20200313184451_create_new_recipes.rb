class CreateNewRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :new_recipes do |t|
      t.string :food_name
      t.string :ingredients
      t.string :recipe
      t.string :cook_time
      t.integer :carbs
      t.integer :calories
      t.integer :sugars
      t.integer :fat
      t.integer :protein
      t.integer :cholesterol
      t.integer :sodium
      t.string :image
      t.belongs_to :new_food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
