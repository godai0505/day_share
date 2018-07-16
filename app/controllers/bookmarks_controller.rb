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
    render "new.js.haml"
  end

  def create
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
end
