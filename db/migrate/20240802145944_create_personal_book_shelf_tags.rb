class CreatePersonalBookShelfTags < ActiveRecord::Migration[7.1]
  def change
    create_table :personal_book_shelf_tags do |t|
      t.references :personal_book_shelf, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
