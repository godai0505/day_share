class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:edit, :update, :destroy]

  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.user_id = current_user.id

    respond_to do |format|
      if @bookmark.save
        #format.html { redirect_to @bookmark, notice: 'Bookmark was successfully created.' }
        #format.json { render :show, status: :created, location: @bookmark }
        format.js { @status = "success" }
      else
        #format.html { render :new }
        #format.json { render json: @bookmark.errors, status: :unprocessable_entity }
        format.js { @status = "fail" }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @bookmark.update(bookmark_params)
        #format.html { redirect_to '/', notice: 'Bookmark was successfully updated.' }
        #format.json { render :show, status: :success, location: @bookmark }
        format.js { @status = "success" }
      else
        #format.html { render :edit }
        #format.json { render json: @bookmark.errors, status: :unprocessable_entity }
        format.js { @status = "fail" }
      end
    end
  end

  def destroy
    @bookmark.destroy

    respond_to do |format|
      format.html { redirect_to '/', notice: 'Bookmark was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:name, :url)
  end
end
