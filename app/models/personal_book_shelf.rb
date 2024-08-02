class PersonalBookShelf < ApplicationRecord
  belongs_to :user
  belongs_to :book
  has_many :personal_book_shelf_tags
  has_many :tags, through: :personal_book_shelf_tags
end
