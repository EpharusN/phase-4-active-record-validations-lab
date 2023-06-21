class Author < ApplicationRecord
#has_many :posts
validates :name, presence: true
validates :name, uniqueness: {case_sensitive: true}
validates :phone_number, length: {is: 10}
end

#puts Author.create(name: "Mary Jane").valid?
#puts Author.create(name: nil),valid?
