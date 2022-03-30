class StickyNote < ApplicationRecord
    validates :title, presence: true
    validates :body, length: {maximum: 280}

    belongs_to :user
end
