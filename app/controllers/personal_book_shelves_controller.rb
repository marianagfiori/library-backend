class PersonalBookShelvesController < ApplicationController
  before_action :set_personal_book_shelf, only: %i[ show update destroy ]

  # GET /personal_book_shelves
  def index
    @personal_book_shelves = PersonalBookShelf.all

    render json: @personal_book_shelves
  end

  # GET /personal_book_shelves/1
  def show
    render json: @personal_book_shelf
  end

  # POST /personal_book_shelves
  def create
    @personal_book_shelf = PersonalBookShelf.new(personal_book_shelf_params)

    if @personal_book_shelf.save
      render json: @personal_book_shelf, status: :created, location: @personal_book_shelf
    else
      render json: @personal_book_shelf.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /personal_book_shelves/1
  def update
    if @personal_book_shelf.update(personal_book_shelf_params)
      render json: @personal_book_shelf
    else
      render json: @personal_book_shelf.errors, status: :unprocessable_entity
    end
  end

  # DELETE /personal_book_shelves/1
  def destroy
    @personal_book_shelf.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_book_shelf
      @personal_book_shelf = PersonalBookShelf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def personal_book_shelf_params
      params.require(:personal_book_shelf).permit(:user_id, :book_id)
    end
end
