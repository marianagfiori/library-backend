class PersonalBookShelfTag < ApplicationRecord
  belongs_to :personal_book_shelf
  belongs_to :tag
end
