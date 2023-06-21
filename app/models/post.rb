class Post < ApplicationRecord
    #belongs_to :author

    validates :title, presence: true, exclusion: { in: ["True Facts"] }
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"] }
end
