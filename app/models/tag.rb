class Tag < ApplicationRecord
  has_many :personal_book_shelf_tags
  has_many :personal_book_shelves, through: :personal_book_shelf_tags
end
