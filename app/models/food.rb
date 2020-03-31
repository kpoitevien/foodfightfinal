class Food < ApplicationRecord
    has_many :recipes

    # You'd be able to get your searched foods in the model by doing
    # Food.category('Burger')
    scope :category, ->(category) { where('title ilike ?', "%#{category}%") }
end
