class StickyNote < ApplicationRecord
    validates :title, presence: true, length: {maximum: 55}
    validates :body, length: {maximum: 280}

    belongs_to :user
end
