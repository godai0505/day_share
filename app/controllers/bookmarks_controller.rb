class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]

  def index
    @bookmarks = Bookmark.all
  end

  def show
  end

  def edit
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Test.new(bookmark_params)

    respond_to do |format|
      if @bookmark.save
        format.html { redirect_to @bookmark, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @bookmark }
        format.js { @status = "success" }
      else
        format.html { render :new }
        format.json { render json: @bookmark.errors, status: :unprocessable_entity }
        format.js { @status = "fail" }
      end
    end
  end

  def update
  end

  def bulk_update
  end

  def destroy
  end

  def bulk_destroy
  end

  private
  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:name, :url)
  end
end
