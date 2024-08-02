class PersonalBookShelfTagsController < ApplicationController
  before_action :set_personal_book_shelf_tag, only: %i[ show update destroy ]

  # GET /personal_book_shelf_tags
  def index
    @personal_book_shelf_tags = PersonalBookShelfTag.all

    render json: @personal_book_shelf_tags
  end

  # GET /personal_book_shelf_tags/1
  def show
    render json: @personal_book_shelf_tag
  end

  # POST /personal_book_shelf_tags
  def create
    @personal_book_shelf_tag = PersonalBookShelfTag.new(personal_book_shelf_tag_params)

    if @personal_book_shelf_tag.save
      render json: @personal_book_shelf_tag, status: :created, location: @personal_book_shelf_tag
    else
      render json: @personal_book_shelf_tag.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /personal_book_shelf_tags/1
  def update
    if @personal_book_shelf_tag.update(personal_book_shelf_tag_params)
      render json: @personal_book_shelf_tag
    else
      render json: @personal_book_shelf_tag.errors, status: :unprocessable_entity
    end
  end

  # DELETE /personal_book_shelf_tags/1
  def destroy
    @personal_book_shelf_tag.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_book_shelf_tag
      @personal_book_shelf_tag = PersonalBookShelfTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def personal_book_shelf_tag_params
      params.require(:personal_book_shelf_tag).permit(:personal_book_shelf_id, :tag_id)
    end
end
