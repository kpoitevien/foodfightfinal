class Post < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy

    validates :title, presence: true,
    length: { minimum: 5 }
    validates :introduction, presence: true,
                    length: { minimum: 15 }

    def as_json(options = {})
        super(options.merge(include: [:user, comments: {include: :user}]))
    end

end
