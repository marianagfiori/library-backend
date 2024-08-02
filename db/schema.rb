# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_08_02_145944) do
  create_table "books", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.string "synopsis"
    t.decimal "average_note"
    t.integer "average_age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personal_book_shelf_tags", force: :cascade do |t|
    t.integer "personal_book_shelf_id", null: false
    t.integer "tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_book_shelf_id"], name: "index_personal_book_shelf_tags_on_personal_book_shelf_id"
    t.index ["tag_id"], name: "index_personal_book_shelf_tags_on_tag_id"
  end

  create_table "personal_book_shelves", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_personal_book_shelves_on_book_id"
    t.index ["user_id"], name: "index_personal_book_shelves_on_user_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "score"
    t.integer "user_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_ratings_on_book_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "note"
    t.integer "user_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_reviews_on_book_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "personal_book_shelf_tags", "personal_book_shelves"
  add_foreign_key "personal_book_shelf_tags", "tags"
  add_foreign_key "personal_book_shelves", "books"
  add_foreign_key "personal_book_shelves", "users"
  add_foreign_key "ratings", "books"
  add_foreign_key "ratings", "users"
  add_foreign_key "reviews", "books"
  add_foreign_key "reviews", "users"
end
