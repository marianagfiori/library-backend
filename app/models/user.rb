class User < ApplicationRecord
  has_many :personal_book_shelves
  has_many :books, through: :personal_book_shelves
  has_many :reviews
  has_many :ratings
end
