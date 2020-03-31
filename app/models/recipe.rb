class Recipe < ApplicationRecord
   belongs_to :food

   scope :by_category, -> (category) {where("title" => category) }
   scope :by_ingredient, -> (ingredient) { where("ingredients LIKE ?", ingredient) }
end
