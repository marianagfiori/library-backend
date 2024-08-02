require "test_helper"

class PersonalBookShelvesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal_book_shelf = personal_book_shelves(:one)
  end

  test "should get index" do
    get personal_book_shelves_url, as: :json
    assert_response :success
  end

  test "should create personal_book_shelf" do
    assert_difference("PersonalBookShelf.count") do
      post personal_book_shelves_url, params: { personal_book_shelf: { book_id: @personal_book_shelf.book_id, user_id: @personal_book_shelf.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show personal_book_shelf" do
    get personal_book_shelf_url(@personal_book_shelf), as: :json
    assert_response :success
  end

  test "should update personal_book_shelf" do
    patch personal_book_shelf_url(@personal_book_shelf), params: { personal_book_shelf: { book_id: @personal_book_shelf.book_id, user_id: @personal_book_shelf.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy personal_book_shelf" do
    assert_difference("PersonalBookShelf.count", -1) do
      delete personal_book_shelf_url(@personal_book_shelf), as: :json
    end

    assert_response :no_content
  end
end
