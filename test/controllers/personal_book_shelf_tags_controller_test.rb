require "test_helper"

class PersonalBookShelfTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal_book_shelf_tag = personal_book_shelf_tags(:one)
  end

  test "should get index" do
    get personal_book_shelf_tags_url, as: :json
    assert_response :success
  end

  test "should create personal_book_shelf_tag" do
    assert_difference("PersonalBookShelfTag.count") do
      post personal_book_shelf_tags_url, params: { personal_book_shelf_tag: { personal_book_shelf_id: @personal_book_shelf_tag.personal_book_shelf_id, tag_id: @personal_book_shelf_tag.tag_id } }, as: :json
    end

    assert_response :created
  end

  test "should show personal_book_shelf_tag" do
    get personal_book_shelf_tag_url(@personal_book_shelf_tag), as: :json
    assert_response :success
  end

  test "should update personal_book_shelf_tag" do
    patch personal_book_shelf_tag_url(@personal_book_shelf_tag), params: { personal_book_shelf_tag: { personal_book_shelf_id: @personal_book_shelf_tag.personal_book_shelf_id, tag_id: @personal_book_shelf_tag.tag_id } }, as: :json
    assert_response :success
  end

  test "should destroy personal_book_shelf_tag" do
    assert_difference("PersonalBookShelfTag.count", -1) do
      delete personal_book_shelf_tag_url(@personal_book_shelf_tag), as: :json
    end

    assert_response :no_content
  end
end
